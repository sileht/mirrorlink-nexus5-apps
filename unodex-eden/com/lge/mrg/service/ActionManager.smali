.class public Lcom/lge/mrg/service/ActionManager;
.super Ljava/lang/Object;
.source "ActionManager.java"


# static fields
.field public static final ACTION_APPEND_USER_LOG:Ljava/lang/String; = "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

.field public static final ACTION_CARD_COMMAND:Ljava/lang/String; = "com.lge.mrg.service.action.CARD_COMMAND"

.field private static final ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

.field public static final ACTION_NOTIFY_CARD_ACTION:Ljava/lang/String; = "com.lge.mrg.service.action.NOTIFY_CARD_ACTION"

.field public static final ACTION_REGISTER_LISTENER:Ljava/lang/String; = "com.lge.mrg.service.intent.action.REG_LISTENER"

.field public static final BUNDLE_CARD_ACTION_URI:Ljava/lang/String; = "bundle_card_action_uri"

.field public static final BUNDLE_CARD_URI:Ljava/lang/String; = "bundle_card_uri"

.field public static final CARD_CMD_ADD:I = 0x0

.field public static final CARD_CMD_REMOVE:I = 0x1

.field public static final EXTRA_CARD_URI:Ljava/lang/String; = "extra_card_uri"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "extra_cmd"

.field public static final EXTRA_LISTENER:Ljava/lang/String; = "extra_listener"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionManager"

.field public static final MSG_CARD_ACTION:I = 0x3e9

.field public static final MSG_USER_LOG:I = 0x3e8


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/lge/mrg/service/IActionManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lge.mrg.service"

    const-string v2, "com.lge.mrg.service.internal.ActionManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mrg/service/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/mrg/service/ActionManager;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v1, Lcom/lge/mrg/service/ActionManager$1;

    invoke-direct {v1, p0}, Lcom/lge/mrg/service/ActionManager$1;-><init>(Lcom/lge/mrg/service/ActionManager;)V

    iput-object v1, p0, Lcom/lge/mrg/service/ActionManager;->connection:Landroid/content/ServiceConnection;

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.intent.action.REG_LISTENER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "extra_listener"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/lge/mrg/service/ActionManager;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 156
    const-string v1, "ActionManager"

    const-string v2, "failed to connect to ActionManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_26
    iput-object p1, p0, Lcom/lge/mrg/service/ActionManager;->mContext:Landroid/content/Context;

    .line 160
    return-void
.end method

.method static synthetic access$0(Lcom/lge/mrg/service/ActionManager;Lcom/lge/mrg/service/IActionManagerService;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/mrg/service/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    return-void
.end method

.method public static appendUserLog(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "log"    # Landroid/os/Bundle;

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.mrg.service.intent.action.APPEND_USER_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    return-void
.end method

.method private checkServiceConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    if-nez v0, :cond_c

    .line 164
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ActionManager is not Ready"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_c
    return-void
.end method

.method public static makeIntentForCardAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cardUri"    # Ljava/lang/String;
    .param p2, "actionUri"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.mrg.service.action.NOTIFY_CARD_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "bundle_card_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "bundle_card_action_uri"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/lge/mrg/service/ActionManager;->ACTION_MANAGER_COMP_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    return-object v1
.end method


# virtual methods
.method public appendUserLog(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "log"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/lge/mrg/service/ActionManager;->checkServiceConnection()V

    .line 179
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    invoke-interface {v0, p1}, Lcom/lge/mrg/service/IActionManagerService;->appendUserLog(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public executeCardCommand(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "command"    # I
    .param p2, "cardUri"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/lge/mrg/service/ActionManager;->checkServiceConnection()V

    .line 210
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/mrg/service/IActionManagerService;->executeCardCommand(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public finalize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/lge/mrg/service/ActionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mrg/service/ActionManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 220
    iput-object v2, p0, Lcom/lge/mrg/service/ActionManager;->connection:Landroid/content/ServiceConnection;

    .line 221
    iput-object v2, p0, Lcom/lge/mrg/service/ActionManager;->mService:Lcom/lge/mrg/service/IActionManagerService;

    .line 222
    return-void
.end method
