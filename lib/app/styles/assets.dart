class R {
  const R();

  static const icons = _Icons();
  static const images = _Images();
  static const svgs = _Svgs();
}



class _Icons {
  const _Icons();
  static const path = 'assets/icons';
  final String coin = '$path/coin.png';
  final String withdraw = '$path/withdraw.png';
  final String burger = '$path/burger.png';
}

class _Images {
  const _Images();
  static const path = 'assets/image';
  final String loginBackground = '$path/login_back.png';
  final String registerBackground = '$path/register_back.png';
  final String phone = '$path/holdingphone.png';
  final String mask = '$path/mask.png';
}


class _Svgs {
  const _Svgs();
  static const path = 'assets/svg';
  final String loginFront = '$path/login_front.svg';
  final String settings = '$path/settings.svg';
  final String home = '$path/home.svg';
  final String person = '$path/person.svg';
  final String employee = '$path/employee.svg';
  final String partnership = '$path/partnership.svg';
  
  final String wallet = '$path/wallet.svg';
  final String guard = '$path/guard.svg';
  final String help = '$path/help.svg';
  final String power = '$path/power.svg';
  final String support = '$path/support.svg';
  final String user = '$path/user.svg';
  final String touchPad = '$path/touch-pad.svg';
  final String warning = '$path/warning.svg';
  final String addCamera = '$path/add_camera.svg';
  final String logo = '$path/logo.svg';

}
