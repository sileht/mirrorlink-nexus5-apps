.class public abstract Lcom/lge/internal/hardware/fmradio/RdsOnCase;
.super Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;
.source "RdsOnCase.java"


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 14
    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 15
    sget-object v6, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v7, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 16
    sget-object v8, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    const-wide/16 v10, 0x7530

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v11}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;-><init>(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;J)V

    .line 17
    return-void
.end method
