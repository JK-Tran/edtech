import 'package:edtech/app/features/auth/data/models/token_data.dart';
import 'package:edtech/app/features/auth/domain/entity/token.dart';
import 'package:edtech/core/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TokenDataMapper extends BaseDataMapper<TokenData, Token> {
  @override
  Token mapToEntity(TokenData? data) {
    return Token(
      accessToken: data?.accessToken ?? '',
      refreshToken: data?.refreshToken ?? '',
    );
  }
}
