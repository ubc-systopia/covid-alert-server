# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: covidshield.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'google/protobuf/duration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("covidshield.proto", :syntax => :proto2) do
    add_message "covidshield.KeyClaimRequest" do
      optional :one_time_code, :string, 1
      optional :app_public_key, :bytes, 2
    end
    add_message "covidshield.KeyClaimResponse" do
      optional :error, :enum, 1, "covidshield.KeyClaimResponse.ErrorCode"
      optional :server_public_key, :bytes, 2
      optional :tries_remaining, :uint32, 3
      optional :remaining_ban_duration, :message, 4, "google.protobuf.Duration"
    end
    add_enum "covidshield.KeyClaimResponse.ErrorCode" do
      value :NONE, 0
      value :UNKNOWN, 1
      value :INVALID_ONE_TIME_CODE, 2
      value :SERVER_ERROR, 3
      value :INVALID_KEY, 4
      value :TEMPORARY_BAN, 5
    end
    add_message "covidshield.EncryptedUploadRequest" do
      optional :server_public_key, :bytes, 1
      optional :app_public_key, :bytes, 2
      optional :nonce, :bytes, 3
      optional :payload, :bytes, 4
    end
    add_message "covidshield.EncryptedUploadResponse" do
      optional :error, :enum, 1, "covidshield.EncryptedUploadResponse.ErrorCode"
    end
    add_enum "covidshield.EncryptedUploadResponse.ErrorCode" do
      value :NONE, 0
      value :UNKNOWN, 1
      value :INVALID_KEYPAIR, 2
      value :DECRYPTION_FAILED, 3
      value :INVALID_PAYLOAD, 4
      value :SERVER_ERROR, 5
      value :INVALID_CRYPTO_PARAMETERS, 6
      value :TOO_MANY_KEYS, 7
      value :INVALID_TIMESTAMP, 8
      value :INVALID_ROLLING_PERIOD, 10
      value :INVALID_KEY_DATA, 11
      value :INVALID_ROLLING_START_INTERVAL_NUMBER, 12
      value :INVALID_TRANSMISSION_RISK_LEVEL, 13
      value :NO_KEYS_IN_PAYLOAD, 14
    end
    add_message "covidshield.OutbreakEvent" do
      optional :location_id, :string, 1
      optional :start_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "covidshield.OutbreakEventResponse" do
      optional :error, :enum, 1, "covidshield.OutbreakEventResponse.ErrorCode"
    end
    add_enum "covidshield.OutbreakEventResponse.ErrorCode" do
      value :NONE, 0
      value :UNKNOWN, 1
      value :INVALID_ID, 2
      value :MISSING_TIMESTAMP, 3
      value :PERIOD_INVALID, 4
      value :SERVER_ERROR, 5
    end
    add_message "covidshield.OutbreakEventExport" do
      optional :start_timestamp, :fixed64, 1
      optional :end_timestamp, :fixed64, 2
      repeated :locations, :message, 3, "covidshield.OutbreakEvent"
    end
    add_message "covidshield.OutbreakEventExportSignature" do
      optional :signature, :bytes, 1
    end
    add_message "covidshield.Upload" do
      optional :timestamp, :message, 1, "google.protobuf.Timestamp"
      repeated :keys, :message, 2, "covidshield.TemporaryExposureKey"
    end
    add_message "covidshield.TemporaryExposureKeyExport" do
      optional :start_timestamp, :fixed64, 1
      optional :end_timestamp, :fixed64, 2
      optional :region, :string, 3
      optional :batch_num, :int32, 4
      optional :batch_size, :int32, 5
      repeated :signature_infos, :message, 6, "covidshield.SignatureInfo"
      repeated :keys, :message, 7, "covidshield.TemporaryExposureKey"
      repeated :revised_keys, :message, 8, "covidshield.TemporaryExposureKey"
    end
    add_message "covidshield.SignatureInfo" do
      optional :verification_key_version, :string, 3
      optional :verification_key_id, :string, 4
      optional :signature_algorithm, :string, 5
    end
    add_message "covidshield.TemporaryExposureKey" do
      optional :key_data, :bytes, 1
      optional :transmission_risk_level, :int32, 2
      optional :rolling_start_interval_number, :int32, 3
      optional :rolling_period, :int32, 4, default: 144
      optional :report_type, :enum, 5, "covidshield.TemporaryExposureKey.ReportType"
      optional :days_since_onset_of_symptoms, :sint32, 6
    end
    add_enum "covidshield.TemporaryExposureKey.ReportType" do
      value :UNKNOWN, 0
      value :CONFIRMED_TEST, 1
      value :CONFIRMED_CLINICAL_DIAGNOSIS, 2
      value :SELF_REPORT, 3
      value :RECURSIVE, 4
      value :REVOKED, 5
    end
    add_message "covidshield.TEKSignatureList" do
      repeated :signatures, :message, 1, "covidshield.TEKSignature"
    end
    add_message "covidshield.TEKSignature" do
      optional :signature_info, :message, 1, "covidshield.SignatureInfo"
      optional :batch_num, :int32, 2
      optional :batch_size, :int32, 3
      optional :signature, :bytes, 4
    end
  end
end

module Covidshield
  KeyClaimRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.KeyClaimRequest").msgclass
  KeyClaimResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.KeyClaimResponse").msgclass
  KeyClaimResponse::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.KeyClaimResponse.ErrorCode").enummodule
  EncryptedUploadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.EncryptedUploadRequest").msgclass
  EncryptedUploadResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.EncryptedUploadResponse").msgclass
  EncryptedUploadResponse::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.EncryptedUploadResponse.ErrorCode").enummodule
  OutbreakEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.OutbreakEvent").msgclass
  OutbreakEventResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.OutbreakEventResponse").msgclass
  OutbreakEventResponse::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.OutbreakEventResponse.ErrorCode").enummodule
  OutbreakEventExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.OutbreakEventExport").msgclass
  OutbreakEventExportSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.OutbreakEventExportSignature").msgclass
  Upload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.Upload").msgclass
  TemporaryExposureKeyExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.TemporaryExposureKeyExport").msgclass
  SignatureInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.SignatureInfo").msgclass
  TemporaryExposureKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.TemporaryExposureKey").msgclass
  TemporaryExposureKey::ReportType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.TemporaryExposureKey.ReportType").enummodule
  TEKSignatureList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.TEKSignatureList").msgclass
  TEKSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("covidshield.TEKSignature").msgclass
end
