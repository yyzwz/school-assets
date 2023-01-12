package cn.zwz.assets.controller;

import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.assets.entity.AdminAsset;
import cn.zwz.assets.entity.AdminAssets;
import cn.zwz.assets.entity.AdminAssetsBuy;
import cn.zwz.assets.service.IAdminAssetService;
import cn.zwz.assets.service.IAdminAssetsBuyService;
import cn.zwz.assets.service.IAdminAssetsService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

/**
 * @author 开发者
 */
@Slf4j
@RestController
@Api(tags = "行政资产采购")
@RequestMapping("/zwz/adminAssetsBuy")
@Transactional
public class AdminAssetsBuyController {

    @Autowired
    private IAdminAssetsBuyService iAdminAssetsBuyService;

    @Autowired
    private IAdminAssetsService iAdminAssetsService;

    @Autowired
    private IAdminAssetService iAdminAssetService;

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询资产采购")
    public Result<IPage<AdminAssetsBuy>> getByPage(@ModelAttribute AdminAssetsBuy buy, @ModelAttribute PageVo page){
        QueryWrapper<AdminAssetsBuy> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(buy.getName())) {
            qw.like("name",buy.getName());
        }
        if(buy.getSubmitFlag() != 0) {
            qw.eq("submit_flag",buy.getSubmitFlag());
        }
        return new ResultUtil<IPage<AdminAssetsBuy>>().setData(iAdminAssetsBuyService.page(PageUtil.initMpPage(page),qw));
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增资产采购")
    public Result<AdminAssetsBuy> insert(AdminAssetsBuy adminAssetsBuy){
        String assetId = adminAssetsBuy.getAssetId();
        AdminAsset adminAsset = iAdminAssetService.getById(assetId);
        if(adminAsset != null) {
            adminAssetsBuy.setName(adminAsset.getName());
            adminAssetsBuy.setType(adminAsset.getType());
            adminAssetsBuy.setBm(adminAsset.getId());
            adminAssetsBuy.setSpec(adminAsset.getGg());
            adminAssetsBuy.setModel(adminAsset.getXh());
            adminAssetsBuy.setCc(adminAsset.getCc());
            adminAssetsBuy.setCz(adminAsset.getCz());
            adminAssetsBuy.setUnit(adminAsset.getJldw());
            adminAssetsBuy.setBzdw(adminAsset.getBzdw());
            adminAssetsBuy.setSyfw(adminAsset.getSyfw());
            adminAssetsBuy.setMrck(adminAsset.getMrck());
            adminAssetsBuy.setMrckName(adminAsset.getMrckName());
            adminAssetsBuy.setMaxMoney(adminAsset.getCgj());
            adminAssetsBuy.setMinMoney(adminAsset.getXsj());
            adminAssetsBuy.setGys(adminAsset.getGys());
            adminAssetsBuy.setGysName(adminAsset.getGysName());
            adminAssetsBuy.setImageUrl(adminAsset.getImageUrl());
        }
        if(iAdminAssetsBuyService.saveOrUpdate(adminAssetsBuy)){
            return new ResultUtil<AdminAssetsBuy>().setData(adminAssetsBuy);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑资产采购")
    public Result<AdminAssetsBuy> update(AdminAssetsBuy adminAssetsBuy){
        String assetId = adminAssetsBuy.getAssetId();
        AdminAsset adminAsset = iAdminAssetService.getById(assetId);
        if(adminAsset != null) {
            adminAssetsBuy.setName(adminAsset.getName());
            adminAssetsBuy.setType(adminAsset.getType());
            adminAssetsBuy.setBm(adminAsset.getId());
            adminAssetsBuy.setSpec(adminAsset.getGg());
            adminAssetsBuy.setModel(adminAsset.getXh());
            adminAssetsBuy.setCc(adminAsset.getCc());
            adminAssetsBuy.setCz(adminAsset.getCz());
            adminAssetsBuy.setUnit(adminAsset.getJldw());
            adminAssetsBuy.setBzdw(adminAsset.getBzdw());
            adminAssetsBuy.setSyfw(adminAsset.getSyfw());
            adminAssetsBuy.setMrck(adminAsset.getMrck());
            adminAssetsBuy.setMrckName(adminAsset.getMrckName());
            adminAssetsBuy.setMaxMoney(adminAsset.getCgj());
            adminAssetsBuy.setMinMoney(adminAsset.getXsj());
            adminAssetsBuy.setGys(adminAsset.getGys());
            adminAssetsBuy.setGysName(adminAsset.getGysName());
            adminAssetsBuy.setImageUrl(adminAsset.getImageUrl());
        }
        if(iAdminAssetsBuyService.saveOrUpdate(adminAssetsBuy)){
            return new ResultUtil<AdminAssetsBuy>().setData(adminAssetsBuy);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除资产采购")
    public Result<Object> delAllByIds(@RequestParam Long[] ids){
        for(Long id : ids){
            iAdminAssetsBuyService.removeById(id);
        }
        return ResultUtil.success();
    }

    @RequestMapping(value = "/submitData", method = RequestMethod.POST)
    @ApiOperation(value = "提交资产采购")
    public Result<Object> submitData(@RequestParam String[] ids){
        for(String id : ids){
            AdminAssetsBuy buy = iAdminAssetsBuyService.getById(id);
            if(buy.getSubmitFlag() == 0) {
                buy.setSubmitFlag(1);
                iAdminAssetsBuyService.saveOrUpdate(buy);
            }
        }
        return ResultUtil.success();
    }

    @RequestMapping(value = "/auditData", method = RequestMethod.POST)
    @ApiOperation(value = "审核资产采购")
    public Result<Object> auditData(@RequestParam String[] ids,@RequestParam int status){
        for(String id : ids){
            AdminAssetsBuy buy = iAdminAssetsBuyService.getById(id);
            if(buy.getAuditFlag() == 0) {
                buy.setAuditFlag(status);
                iAdminAssetsBuyService.saveOrUpdate(buy);
            }
        }
        return ResultUtil.success();
    }

    @RequestMapping(value = "/inWare", method = RequestMethod.POST)
    @ApiOperation(value = "入库资产采购")
    public Result<Object> inWare(@RequestParam String id,@RequestParam int quantity,@RequestParam float money,@RequestParam String date,@RequestParam String warehouse){
        AdminAssetsBuy buy = iAdminAssetsBuyService.getById(id);
        if(buy != null) {
            int number = (int)iAdminAssetsService.count();
            for(int i = 1 ; i <= quantity; i ++) {
                AdminAssets adminAssets = new AdminAssets();
                adminAssets.setBuyDate(date);
                adminAssets.setMoney(BigDecimal.valueOf(money));
                adminAssets.setBuyNumber(id);
                adminAssets.setDemand(buy.getRemark());
                adminAssets.setModel(buy.getModel());
                adminAssets.setRemark("");
                adminAssets.setUnit(buy.getUnit());
                adminAssets.setSpec(buy.getSpec());
                adminAssets.setName(buy.getName() + " " + i);
                adminAssets.setWarehouse(warehouse);
                adminAssets.setGiveType("");
                adminAssets.setGiveName("");
                adminAssets.setGiveId("");
                adminAssets.setNo(number + i);
                adminAssets.setDestroyName("");
                adminAssets.setDestroyName("");
                iAdminAssetsService.saveOrUpdate(adminAssets);
            }
            if(BigDecimal.valueOf(quantity).compareTo(buy.getQuantity()) == -1) {
                buy.setQuantity2(buy.getQuantity2().subtract(BigDecimal.valueOf(quantity)));
            } else {
                buy.setQuantity2(BigDecimal.ZERO);
                buy.setWareFlag(1);
            }
            iAdminAssetsBuyService.saveOrUpdate(buy);
        }
        return ResultUtil.success();
    }
}
