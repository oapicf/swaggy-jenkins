package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ScmOrganisations._

case class ScmOrganisations (
  
object ScmOrganisations {
  import DateTimeCodecs._

  implicit val ScmOrganisationsCodecJson: CodecJson[ScmOrganisations] = CodecJson.derive[ScmOrganisations]
  implicit val ScmOrganisationsDecoder: EntityDecoder[ScmOrganisations] = jsonOf[ScmOrganisations]
  implicit val ScmOrganisationsEncoder: EntityEncoder[ScmOrganisations] = jsonEncoderOf[ScmOrganisations]
}
