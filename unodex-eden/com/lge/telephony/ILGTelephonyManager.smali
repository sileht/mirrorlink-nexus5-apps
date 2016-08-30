.class public interface abstract Lcom/lge/telephony/ILGTelephonyManager;
.super Ljava/lang/Object;
.source "ILGTelephonyManager.java"


# virtual methods
.method public abstract DMRequest([B[B)[B
.end method

.method public abstract getDeviceIdForVZW(I)Ljava/lang/String;
.end method

.method public abstract getLteOnCdmaPhoneType()I
.end method

.method public abstract getMobileDebugScreen()Ljava/lang/String;
.end method

.method public abstract getMobileQualityInformation()Ljava/util/HashMap;
.end method

.method public abstract getMobileQualityInformation2()Ljava/util/HashMap;
.end method

.method public abstract getNetworkCountryIso(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIso(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName(I)Ljava/lang/String;
.end method

.method public abstract moca_alarm_event([B)[B
.end method

.method public abstract moca_alarm_event_reg(I)Z
.end method

.method public abstract moca_check_mem()[I
.end method

.method public abstract moca_get_RFParameter(I)[B
.end method

.method public abstract moca_get_data()[B
.end method

.method public abstract moca_get_misc(I)[B
.end method

.method public abstract moca_set_event([B)[B
.end method

.method public abstract moca_set_log([B[B)[B
.end method

.method public abstract moca_set_mem(I)Z
.end method

.method public abstract oem_ssa_alarm_event([B)[B
.end method

.method public abstract oem_ssa_check_mem()[I
.end method

.method public abstract oem_ssa_get_data()[B
.end method

.method public abstract oem_ssa_hdv_alarm_event([B)[B
.end method

.method public abstract oem_ssa_set_event([B)[B
.end method

.method public abstract oem_ssa_set_log([B[B)[B
.end method

.method public abstract oem_ssa_set_mem(I)Z
.end method

.method public abstract setAirplaneMode(Z)I
.end method

.method public abstract setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract startMobileQualityInformation()V
.end method

.method public abstract stopMobileQualityInformation()V
.end method

.method public abstract uknight_event_set([B)[B
.end method

.method public abstract uknight_get_data()[B
.end method

.method public abstract uknight_log_set([B)[B
.end method

.method public abstract uknight_mem_check()[I
.end method

.method public abstract uknight_mem_set(I)Z
.end method

.method public abstract uknight_state_change_set(I)Z
.end method
