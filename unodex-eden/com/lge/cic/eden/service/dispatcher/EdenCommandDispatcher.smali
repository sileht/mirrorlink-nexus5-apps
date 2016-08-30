.class public Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;
.super Ljava/lang/Object;
.source "EdenCommandDispatcher.java"

# interfaces
.implements Lcom/lge/cic/eden/service/dispatcher/ICommandDispatcher;


# instance fields
.field private context:Landroid/content/Context;

.field private edenController:Lcom/lge/cic/eden/controller/EdenController;

.field private final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/cic/eden/controller/EdenController;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "edenController"    # Lcom/lge/cic/eden/controller/EdenController;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    .line 20
    iput-object p1, p0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    .line 22
    return-void
.end method


# virtual methods
.method public onCommand(Landroid/content/Intent;)V
    .registers 28
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "onCommand(): "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 28
    if-eqz p1, :cond_7a5

    .line 29
    const-string v21, "MSG_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    .local v13, "msgType":Ljava/lang/String;
    if-nez v13, :cond_7c

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "command for starting service : null."

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 37
    :goto_35
    invoke-static {v13}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand;->check(Ljava/lang/String;)Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    move-result-object v20

    .line 39
    .local v20, "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    sget-object v21, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->MANAGE:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_652

    .line 40
    const-string v21, "RunGallery"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_97

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->syncOnRequest()V

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->startImageContentChangeMonitoring()V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->startVideoContentChangeMonitoring()V

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->checkRunningGallery()V

    .line 360
    .end local v13    # "msgType":Ljava/lang/String;
    .end local v20    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_7b
    :goto_7b
    return-void

    .line 34
    .restart local v13    # "msgType":Ljava/lang/String;
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "command for starting service : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_35

    .line 48
    .restart local v20    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_97
    const-string v21, "StopGallery"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_bc

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->stopImageContentChangeMonitoring()V

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->stopVideoContentChangeMonitoring()V

    goto :goto_7b

    .line 54
    :cond_bc
    const-string v21, "CheckGallery"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d8

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->checkRunningGallery()V

    goto :goto_7b

    .line 59
    :cond_d8
    const-string v21, "PermissionCheck"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11b

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/controller/EdenController;->checkPermission(Landroid/content/Intent;)Z

    move-result v15

    .line 62
    .local v15, "result":Z
    if-eqz v15, :cond_7b

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "REQUEST_ID"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendPermissionAllowedIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 69
    .end local v15    # "result":Z
    :cond_11b
    const-string v21, "MediaShowHide"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23d

    .line 70
    const-string v21, "EVENT_ID"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, "eventId":I
    const-string v21, "REQUEST_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 73
    .local v16, "requestId":J
    const-string v21, "MEDIA_ID_LIST_TO_HIDE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v11

    .line 74
    .local v11, "mediaIdListToHide":[J
    const-string v21, "SHOW_ALL"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 76
    .local v19, "showAllFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "showAllFlag : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->trace(Ljava/lang/String;)V

    .line 78
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_199

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "wrong Input param : EVENT_ID"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 84
    :cond_199
    if-eqz v19, :cond_1dc

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "MediaHide with showAllFlag"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    aput-wide v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/lge/cic/eden/controller/EdenController;->setMediaHideFlag([JI)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 91
    :cond_1dc
    if-eqz v11, :cond_21f

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mediaIdListToHide : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v11

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v5}, Lcom/lge/cic/eden/controller/EdenController;->setMediaHideFlag([JI)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 99
    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "there is no a list of Media ID"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 104
    .end local v5    # "eventId":I
    .end local v11    # "mediaIdListToHide":[J
    .end local v16    # "requestId":J
    .end local v19    # "showAllFlag":Z
    :cond_23d
    const-string v21, "EventShowHide"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e7

    .line 105
    const-string v21, "EVENT_ID_LIST_TO_HIDE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 106
    .local v6, "eventIdListToHide":[I
    const-string v21, "SHOW_ALL"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 108
    .restart local v19    # "showAllFlag":Z
    const-string v21, "REQUEST_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 110
    .restart local v16    # "requestId":J
    if-eqz v19, :cond_2a1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, -0x1

    aput v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/controller/EdenController;->setEventHideFlag([I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 116
    :cond_2a1
    if-eqz v6, :cond_2c9

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/lge/cic/eden/controller/EdenController;->setEventHideFlag([I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 123
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "there is no a list of Event ID"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 128
    .end local v6    # "eventIdListToHide":[I
    .end local v16    # "requestId":J
    .end local v19    # "showAllFlag":Z
    :cond_2e7
    const-string v21, "com.lge.myplace.homeDetected"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_304

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->detectPosition()Z

    goto/16 :goto_7b

    .line 133
    :cond_304
    const-string v21, "ClearDB"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_321

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->clearDB()Z

    goto/16 :goto_7b

    .line 138
    :cond_321
    const-string v21, "START_ANALYSIS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_395

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "checking condition on analysis"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->hasPermissions()Z

    move-result v21

    if-nez v21, :cond_357

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "hasPermissions : false"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 148
    :cond_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->isSuccess(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_370

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "do not meeting the analysis conditions"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 163
    :cond_370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "meeting the analysis conditions"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/controller/EdenController;->setSyncPath(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/controller/EdenController;->requestEventClustering(Landroid/content/Intent;)Z

    goto/16 :goto_7b

    .line 191
    :cond_395
    const-string v21, "STOP_ANALYSIS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3b2

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->stopAnalysis()V

    goto/16 :goto_7b

    .line 196
    :cond_3b2
    const-string v21, "REMOVE_ALL_TASK"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3cf

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->removeTaskAll()V

    goto/16 :goto_7b

    .line 201
    :cond_3cf
    const-string v21, "REQUEST_STOP_MANAGING_SERVICE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3ec

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->requestStopService()V

    goto/16 :goto_7b

    .line 206
    :cond_3ec
    const-string v21, "DeleteCard"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_409

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->removeCard()Z

    goto/16 :goto_7b

    .line 211
    :cond_409
    const-string v21, "EventRename"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4a9

    .line 212
    const-string v21, "REQUEST_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 214
    .restart local v16    # "requestId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 215
    const-string v21, "EVENT_ID"

    const/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 216
    .restart local v5    # "eventId":I
    const-string v21, "EVENT_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "eventName":Ljava/lang/String;
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_465

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "check the parameter EVENT_ID for event renaming"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 223
    :cond_465
    if-eqz v8, :cond_46d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_48b

    .line 224
    :cond_46d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "check the parameter EVENT_NAME for event renaming"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 229
    :cond_48b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/lge/cic/eden/controller/EdenController;->updateEventName(ILjava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 233
    .end local v5    # "eventId":I
    .end local v8    # "eventName":Ljava/lang/String;
    .end local v16    # "requestId":J
    :cond_4a9
    const-string v21, "EventMerge"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_54c

    .line 234
    const-string v21, "REQUEST_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 236
    .restart local v16    # "requestId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 237
    const-string v21, "EVENT_ID_LIST"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 238
    .local v7, "eventIds":[I
    const-string v21, "EVENT_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    .restart local v8    # "eventName":Ljava/lang/String;
    if-eqz v7, :cond_4ea

    array-length v0, v7

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_508

    .line 241
    :cond_4ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "check the parameter EVENT_ID_LIST for event combine"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 245
    :cond_508
    if-eqz v8, :cond_510

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_52e

    .line 246
    :cond_510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "check the parameter EVENT_NAME for event combine"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 251
    :cond_52e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Lcom/lge/cic/eden/controller/EdenController;->mergeEvent([ILjava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 255
    .end local v7    # "eventIds":[I
    .end local v8    # "eventName":Ljava/lang/String;
    .end local v16    # "requestId":J
    :cond_54c
    const-string v21, "MediaLightSync"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_582

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->hasPermissions()Z

    move-result v21

    if-nez v21, :cond_577

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "hasPermissions : false"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 261
    :cond_577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->lightSyncOnRequest()V

    goto/16 :goto_7b

    .line 264
    :cond_582
    const-string v21, "MediaSync"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5b8

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->hasPermissions()Z

    move-result v21

    if-nez v21, :cond_5ad

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "hasPermissions : false"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 270
    :cond_5ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->syncOnRequest()V

    goto/16 :goto_7b

    .line 273
    :cond_5b8
    const-string v21, "RegisterAlarm"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5d5

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->setAlarmManually()Z

    goto/16 :goto_7b

    .line 278
    :cond_5d5
    const-string v21, "MediaDelete"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7b

    .line 279
    const-string v21, "REQUEST_ID"

    const-wide/16 v22, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 281
    .restart local v16    # "requestId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->hasPermissions()Z

    move-result v21

    if-nez v21, :cond_60e

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "hasPermissions : false"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 286
    :cond_60e
    const-string v21, "MEDIA_ID_LIST"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 288
    .local v12, "mediaIds":[J
    if-eqz v12, :cond_625

    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_643

    .line 289
    :cond_625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "check the parameter MSG_MEDIA_DELETE for media delete"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v13}, Lcom/lge/cic/eden/broadcast/EdenBroadcastHelper;->sendResultIntentToGallery(Landroid/content/Context;JZLjava/lang/String;)V

    goto/16 :goto_7b

    .line 294
    :cond_643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v12}, Lcom/lge/cic/eden/controller/EdenController;->mediaDelete(J[J)V

    goto/16 :goto_7b

    .line 298
    .end local v12    # "mediaIds":[J
    .end local v16    # "requestId":J
    :cond_652
    sget-object v21, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->EVENT:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_76f

    .line 299
    const-string v21, "ManualAnalysis"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_729

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "checking condition on analysis"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/lge/cic/eden/service/condition/AnalysisConditionChecker;->isSuccess(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_694

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "Not meeting the analysis conditions"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 308
    :cond_694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "meeting the analysis conditions"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "checking home location"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 311
    new-instance v10, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;-><init>(Landroid/content/Context;)V

    .line 313
    .local v10, "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    const-string v21, "HOME"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->checkLocation(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6ca

    .line 315
    :try_start_6c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->detectPosition()Z
    :try_end_6ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c1 .. :try_end_6ca} :catch_70f

    .line 321
    :cond_6ca
    :goto_6ca
    invoke-virtual {v10}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->checkFirstTimeAnalysisUsingPOI()Z

    move-result v9

    .line 322
    .local v9, "firstTimeAnalysisFlag":Z
    if-eqz v9, :cond_6e4

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "requesting re-clustering"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->clearDBaboutPOIDetected()Z

    .line 327
    :cond_6e4
    const-string v21, "ROOT_PATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 328
    .local v18, "rootPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/controller/EdenController;->setSyncPath(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/controller/EdenController;->requestEventClustering(Landroid/content/Intent;)Z

    .line 331
    if-eqz v9, :cond_7b

    .line 332
    invoke-virtual {v10}, Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;->updateLocationFlag()V

    goto/16 :goto_7b

    .line 316
    .end local v9    # "firstTimeAnalysisFlag":Z
    .end local v18    # "rootPath":Ljava/lang/String;
    :catch_70f
    move-exception v4

    .line 317
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_6ca

    .line 337
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "locationPOImanager":Lcom/lge/cic/eden/clustering/utils/LocationPOImanager;
    :cond_729
    const-string v21, "SetLocation"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_752

    .line 338
    const-string v21, "HOME"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 339
    .local v14, "rawLocation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/lge/cic/eden/controller/EdenController;->setLocationPOI(Ljava/lang/String;)Z

    goto/16 :goto_7b

    .line 343
    .end local v14    # "rawLocation":Ljava/lang/String;
    :cond_752
    const-string v21, "DeleteLocation"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7b

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->deleteLocation()Z

    goto/16 :goto_7b

    .line 348
    :cond_76f
    sget-object v21, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->STORY:Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_792

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/controller/EdenController;->requestStoryClustering(Landroid/content/Intent;)Z

    goto/16 :goto_7b

    .line 353
    :cond_792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7b

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->edenController:Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/cic/eden/controller/EdenController;->requestStopService()V

    goto/16 :goto_7b

    .line 358
    .end local v13    # "msgType":Ljava/lang/String;
    .end local v20    # "type":Lcom/lge/cic/eden/service/dispatcher/ServiceCommand$Type;
    :cond_7a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/service/dispatcher/EdenCommandDispatcher;->logger:Lcom/lge/cic/eden/utils/Logger;

    move-object/from16 v21, v0

    const-string v22, "intent is null!"

    invoke-virtual/range {v21 .. v22}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_7b
.end method
