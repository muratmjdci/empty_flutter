import 'constants/constants.dart';

enum APIEnum {
  register,
  login,
  synchronize,
  campaigns,
  campaignApply,
  approval,
  activeCollobraitions,
  sendContent,
  sendStatistic,
  singleCampaign,
  withdrawals,
  requestWithdraw,
  editPapara,
}

extension Apis on APIEnum {
  String get endpoint {
    switch (this) {
      case APIEnum.register:
        return "${C.baseurl}register";
      case APIEnum.login:
        return "${C.baseurl}login";
      case APIEnum.synchronize:
        return "${C.baseurl}sync";
      case APIEnum.campaigns:
        return "${C.baseurl}campaigns";
      case APIEnum.campaignApply:
        return "${C.baseurl}campaigns/apply";
      case APIEnum.approval:
        return "${C.baseurl}approvals";
      case APIEnum.activeCollobraitions:
        return "${C.baseurl}collaborations";
      case APIEnum.sendContent:
        return "${C.baseurl}sendContent";
      case APIEnum.sendStatistic:
        return "${C.baseurl}sendStatistic";
      case APIEnum.singleCampaign:
        return "${C.baseurl}campaigns/view";
      case APIEnum.withdrawals:
        return "withdrawals";
      case APIEnum.requestWithdraw:
        return "withdrawals/request";
      case APIEnum.editPapara:
        return "update-papara";
    }
  }
}
