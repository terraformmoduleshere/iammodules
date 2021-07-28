module "createiamuser" {
    source = "./modules/awsiamuser" 
    moduleiamusername = var.iamusername
}
module "creategroup" {
    source = "./modules/awsiamgroup" 
    awsiamgroupname = var.iamgroupname
}
module "membershipt" {
    source = "./modules/awsiammembership"
    membershipusername = module.createiamuser.creatediamusername
    membershipgroupname = module.creategroup.createiamgroupname
}
