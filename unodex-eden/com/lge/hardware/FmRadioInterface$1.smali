.class Lcom/lge/hardware/FmRadioInterface$1;
.super Lcom/lge/internal/hardware/fmradio/RdsData;
.source "FmRadioInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/FmRadioInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

.field final synthetic this$0:Lcom/lge/hardware/FmRadioInterface;


# direct methods
.method constructor <init>(Lcom/lge/hardware/FmRadioInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    .line 163
    invoke-direct {p0}, Lcom/lge/internal/hardware/fmradio/RdsData;-><init>()V

    return-void
.end method

.method private dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V
    .registers 5
    .param p1, "cmd"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    invoke-virtual {p0, v1}, Lcom/lge/hardware/FmRadioInterface$1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    :goto_8
    return-void

    .line 198
    :cond_9
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    iget-object v1, v1, Lcom/lge/hardware/FmRadioInterface;->dispatchHandler:Lcom/lge/internal/hardware/fmradio/MultiDispatcher;

    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface$1;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 200
    iget-object v1, p0, Lcom/lge/hardware/FmRadioInterface$1;->this$0:Lcom/lge/hardware/FmRadioInterface;

    invoke-virtual {v1, v0}, Lcom/lge/hardware/FmRadioInterface;->sendToObservers(Landroid/os/Message;)V

    goto :goto_8
.end method


# virtual methods
.method public onRdsProgramServiceReported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "programService"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface$1;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 168
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsProgramServiceReported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 169
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_PS:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {p0, v0}, Lcom/lge/hardware/FmRadioInterface$1;->dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 170
    const-string v0, "FMFRW_FmRadioInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rdsListener.onRdsProgramServiceReported() : |"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public onRdsProgramTypeReported(I)Z
    .registers 3
    .param p1, "programType"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface$1;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 178
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsProgramTypeReported(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onRdsRadioTextReported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "radioText"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/lge/hardware/FmRadioInterface$1;->clone()Lcom/lge/internal/hardware/fmradio/RdsData;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/FmRadioInterface$1;->oldData:Lcom/lge/internal/hardware/fmradio/RdsData;

    .line 186
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/RdsData;->onRdsRadioTextReported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 187
    sget-object v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_RT:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-direct {p0, v0}, Lcom/lge/hardware/FmRadioInterface$1;->dispatch(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 188
    const-string v0, "FMFRW_FmRadioInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rdsListener.onRdsRadioTextReported() : |"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method
