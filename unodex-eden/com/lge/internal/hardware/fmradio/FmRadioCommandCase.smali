.class public abstract Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;
.super Lcom/lge/internal/hardware/fmradio/CommandCase;
.source "FmRadioCommandCase.java"


# static fields
.field private static final T:Ljava/lang/String; = "FMFRW_FmRadioCommandCase"


# instance fields
.field final cause:Ljava/lang/String;

.field public command:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_fail:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_finished:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_ongoing:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_requested:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field public command_started:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

.field final id:I

.field replyTo:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;J)V
    .registers 16
    .param p1, "command"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "command_requested"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p3, "command_started"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p4, "command_ongoing"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p5, "command_finished"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p6, "command_fail"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p7, "command_ignored"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p8, "msg"    # Landroid/os/Message;
    .param p9, "timeout"    # J

    .prologue
    .line 61
    invoke-static {}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;->getInstance()Lcom/lge/internal/hardware/fmradio/FmRadioCommandPolicy;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p8}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1, p9, p10}, Lcom/lge/internal/hardware/fmradio/CommandCase;-><init>(Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;[Ljava/lang/Object;J)V

    .line 62
    iget-object v0, p8, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->replyTo:Landroid/os/Messenger;

    .line 63
    iget v0, p8, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->id:I

    .line 64
    invoke-virtual {p8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cause"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->cause:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 66
    iput-object p2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_requested:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 67
    iput-object p3, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_started:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 68
    iput-object p4, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ongoing:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 69
    iput-object p5, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_finished:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 70
    iput-object p6, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_fail:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 71
    iput-object p7, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 72
    return-void
.end method


# virtual methods
.method protected aliasFmRadioCommandCase(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V
    .registers 8
    .param p1, "command"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p2, "command_requested"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p3, "command_started"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p4, "command_ongoing"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p5, "command_finished"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p6, "command_fail"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    .param p7, "command_ignored"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 79
    iput-object p2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_requested:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 80
    iput-object p3, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_started:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 81
    iput-object p4, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ongoing:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 82
    iput-object p5, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_finished:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 83
    iput-object p6, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_fail:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 84
    iput-object p7, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .line 85
    return-void
.end method

.method protected final prepCommand(Landroid/os/Message;)Z
    .registers 4
    .param p1, "originalMsg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .local v0, "listener":Ljava/lang/Object;
    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    if-eqz v1, :cond_11

    .line 90
    check-cast v0, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_requested:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-interface {v0, v1, p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand$OnPreExecuteListener;->onPreExecute(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;Landroid/os/Message;)Z

    move-result v1

    .line 91
    :goto_10
    return v1

    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method protected final runCommand([Ljava/lang/Object;)Z
    .registers 7
    .param p1, "parameters"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v2, "FMFRW_FmRadioCommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chipset command prepared: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    aget-object v0, p1, v1

    check-cast v0, Landroid/os/Message;

    .line 129
    .local v0, "commandMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->runFmRadioPrecommand(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 130
    const-string v2, "FMFRW_FmRadioCommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chipset command doesn\'t have to run: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 147
    :goto_38
    return v1

    .line 135
    :cond_39
    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->prepCommand(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 136
    const-string v2, "FMFRW_FmRadioCommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chipset command has been prepared and prematurely ended: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    goto :goto_38

    .line 141
    :cond_59
    const-string v2, "FMFRW_FmRadioCommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chipset command started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_started:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->runFmRadioCommand(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 144
    const/4 v1, 0x1

    goto :goto_38

    .line 146
    :cond_7a
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_fail:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    goto :goto_38
.end method

.method protected abstract runFmRadioCommand(Landroid/os/Message;)Z
.end method

.method protected runFmRadioPrecommand(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected varargs abstract runFmRadioResult([Ljava/lang/Object;)Landroid/os/Message;
.end method

.method protected runFmRadioRevoke()Landroid/os/Message;
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final varargs runResult([Ljava/lang/Object;)Z
    .registers 8
    .param p1, "results"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 152
    const-string v3, "FMFRW_FmRadioCommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Chipset result started: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p1}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->runFmRadioResult([Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 156
    .local v1, "replyMessage":Landroid/os/Message;
    if-nez v1, :cond_4e

    .line 157
    const-string v3, "FMFRW_FmRadioCommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FM Serial Command implementation error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".runFmRadioResult()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v3, "FMFRW_FmRadioCommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is forcibly removed from SerialCommandExecutor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4d
    :goto_4d
    return v2

    .line 162
    :cond_4e
    iget v3, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v0

    .line 163
    .local v0, "currentCommand":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    const-string v3, "FMFRW_FmRadioCommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Chipset result identified: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, v1}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Landroid/os/Message;)V

    .line 165
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ongoing:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    if-ne v0, v3, :cond_4d

    const/4 v2, 0x0

    goto :goto_4d
.end method

.method protected final runRevoke()Z
    .registers 5

    .prologue
    .line 183
    const-string v1, "FMFRW_FmRadioCommandCase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Chipset revocation started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->runFmRadioRevoke()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "replyMessage":Landroid/os/Message;
    if-nez v0, :cond_1c

    .line 187
    const/4 v1, 0x0

    .line 191
    :goto_1b
    return v1

    .line 190
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Landroid/os/Message;)V

    .line 191
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method protected final runRevokePrematurely()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_ignored:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 196
    return-void
.end method

.method protected final runTimeout()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->command_fail:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V

    .line 200
    return-void
.end method

.method protected final sendMessageToReplyTo(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    :try_start_0
    iget v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->id:I

    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 209
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->cause:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cause"

    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->cause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_13
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 214
    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method protected final sendMessageToReplyTo(Lcom/lge/internal/hardware/fmradio/FMRadioCommand;)V
    .registers 4
    .param p1, "command"    # Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->sendMessageToReplyTo(Landroid/os/Message;)V

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/internal/hardware/fmradio/FmRadioCommandCase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
