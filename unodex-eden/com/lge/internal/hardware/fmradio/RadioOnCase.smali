.class public abstract Lcom/lge/internal/hardware/fmradio/RadioOnCase;
.super Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;
.source "RadioOnCase.java"


# instance fields
.field private frequency:I


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 15
    sget-object v2, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 16
    sget-object v4, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v5, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 17
    sget-object v6, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    sget-object v7, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 18
    sget-object v8, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    const-wide/16 v10, 0x1388

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v11}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;-><init>(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;J)V

    .line 19
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/lge/internal/hardware/fmradio/RadioOnCase;->frequency:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/internal/hardware/fmradio/RadioOnCase;->frequency:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
