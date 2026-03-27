package com.ruoyi.web.controller.system;

import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysMenu;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.domain.model.LoginBody;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.core.domain.model.RegisterBody;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.web.service.SysLoginService;
import com.ruoyi.framework.web.service.SysPermissionService;
import com.ruoyi.framework.web.service.TokenService;
import com.ruoyi.system.service.ISysMenuService;
import com.ruoyi.system.service.ISysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import static com.ruoyi.common.utils.SecurityUtils.getLoginUser;

/**
 * 登录验证
 * 
 * @author ruoyi
 */
@Api(tags = "登录注册管理")
@RestController
public class SysLoginController
{
    @Autowired
    private SysLoginService loginService;

    @Autowired
    private ISysMenuService menuService;

    @Autowired
    private SysPermissionService permissionService;

    @Autowired
    private TokenService tokenService;
    
    @Autowired
    private ISysUserService userService;

    /**
     * 登录方法
     * 
     * @param loginBody 登录信息
     * @return 结果
     */
    @ApiOperation("用户登录")
    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginBody loginBody)
    {
        AjaxResult ajax = AjaxResult.success();
        return loginService.login(loginBody.getUsername(), loginBody.getPassword(), loginBody.getCode(),
                loginBody.getUuid(),false);
    }
    /**
     * 三方登录方法
     */
    @ApiOperation("第三方登录")
    @PostMapping("/login/third")
    public AjaxResult loginThird(@RequestBody LoginBody loginBody)
    {
        AjaxResult ajax = AjaxResult.success();
        // 生成令牌
        ajax = loginService.login(loginBody.getUsername(), loginBody.getPassword(), loginBody.getCode(),
                loginBody.getUuid(),true);
        return ajax;
    }

    /**
     * 获取用户信息
     * 
     * @return 用户信息
     */
    @GetMapping("getInfo")
    public AjaxResult getInfo()
    {
        LoginUser loginUser = getLoginUser();
        SysUser user = loginUser.getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        if (!loginUser.getPermissions().equals(permissions))
        {
            loginUser.setPermissions(permissions);
            tokenService.refreshToken(loginUser);
        }
        AjaxResult ajax = AjaxResult.success();
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        return ajax;
    }

    /**
     * 获取路由信息
     * 
     * @return 路由信息
     */
    @GetMapping("getRouters")
    public AjaxResult getRouters()
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuTreeByUserId(userId);
        return AjaxResult.success(menuService.buildMenus(menus));
    }
    
    /**
     * 注册方法
     * 
     * @param registerBody 注册信息
     * @return 结果
     */
    @ApiOperation("用户注册")
    @PostMapping("/user/register")
    public AjaxResult register(@RequestBody RegisterBody registerBody)
    {
        if (StringUtils.isEmpty(registerBody.getUsername()))
        {
            return AjaxResult.error("用户名不能为空");
        }
        if (StringUtils.isEmpty(registerBody.getPassword()))
        {
            return AjaxResult.error("密码不能为空");
        }
        if (registerBody.getPassword().length() < UserConstants.PASSWORD_MIN_LENGTH
                || registerBody.getPassword().length() > UserConstants.PASSWORD_MAX_LENGTH)
        {
            return AjaxResult.error("密码长度必须在" + UserConstants.PASSWORD_MIN_LENGTH + "-" + UserConstants.PASSWORD_MAX_LENGTH + "个字符之间");
        }
        
        SysUser user = new SysUser();
        user.setUserName(registerBody.getUsername());
        user.setNickName(registerBody.getNickName());
        user.setEmail(registerBody.getEmail());
        user.setPhonenumber(registerBody.getPhonenumber());
        user.setPassword(SecurityUtils.encryptPassword(registerBody.getPassword()));
        user.setStatus(UserConstants.NORMAL);
        user.setDelFlag(UserConstants.NORMAL);
        
        // 校验用户名是否唯一
        if (!userService.checkUserNameUnique(user))
        {
            return AjaxResult.error("用户名已存在");
        }
        // 校验手机号码是否唯一
        if (StringUtils.isNotEmpty(registerBody.getPhonenumber())
                && !userService.checkPhoneUnique(user))
        {
            return AjaxResult.error("手机号码已存在");
        }
        // 校验邮箱是否唯一
        if (StringUtils.isNotEmpty(registerBody.getEmail())
                && !userService.checkEmailUnique(user))
        {
            return AjaxResult.error("邮箱已存在");
        }
        
        try
        {
            if (userService.registerUser(user))
            {
                return AjaxResult.success("注册成功");
            }
            return AjaxResult.error("注册失败");
        }
        catch (ServiceException e)
        {
            return AjaxResult.error(e.getMessage());
        }
        catch (Exception e)
        {
            return AjaxResult.error("注册失败，请联系管理员");
        }
    }
}
