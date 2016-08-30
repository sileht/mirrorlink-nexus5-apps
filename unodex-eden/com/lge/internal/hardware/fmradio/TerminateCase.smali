.class public abstract Lcom/lge/internal/hardware/fmradio/TerminateCase;
.super Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;
.source "TerminateCase.java"


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 14
    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 15
    sget-object v6, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v7, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 16
    sget-object v8, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    const-wide/16 v10, 0x3e8

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v11}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;-><init>(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;J)V

    .line 17
    return-void
.end method
