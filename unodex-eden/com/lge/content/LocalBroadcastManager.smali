.class public Lcom/lge/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;,
        Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/lge/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Lcom/lge/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/lge/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/content/LocalBroadcastManager$1;-><init>(Lcom/lge/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/lge/content/LocalBroadcastManager;)V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/lge/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 9

    .prologue
    .line 284
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, "brs":[Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v6, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 286
    :try_start_4
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 287
    .local v0, "N":I
    if-gtz v0, :cond_e

    .line 288
    monitor-exit v6

    return-void

    .line 290
    :cond_e
    new-array v2, v0, [Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;

    .line 291
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 285
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2d

    .line 294
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 295
    aget-object v1, v2, v3

    .line 296
    .local v1, "br":Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    iget-object v5, v1, Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_30

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 285
    .end local v0    # "N":I
    .end local v1    # "br":Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_2d
    move-exception v5

    :try_start_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v5

    .line 297
    .restart local v0    # "N":I
    .restart local v1    # "br":Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_30
    iget-object v5, v1, Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v5, v5, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/lge/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_22
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/content/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Lcom/lge/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    sget-object v0, Lcom/lge/content/LocalBroadcastManager;->mInstance:Lcom/lge/content/LocalBroadcastManager;

    if-nez v0, :cond_12

    .line 102
    new-instance v0, Lcom/lge/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lge/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/content/LocalBroadcastManager;->mInstance:Lcom/lge/content/LocalBroadcastManager;

    .line 104
    :cond_12
    sget-object v0, Lcom/lge/content/LocalBroadcastManager;->mInstance:Lcom/lge/content/LocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 134
    iget-object v6, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 135
    :try_start_3
    new-instance v2, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 136
    .local v2, "entry":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 137
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v3, :cond_1d

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1d
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-lt v4, v5, :cond_29

    .line 134
    monitor-exit v6

    .line 152
    return-void

    .line 143
    :cond_29
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 145
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_42

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 134
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v2    # "entry":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :catchall_48
    move-exception v5

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v15

    .line 202
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 206
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 210
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_bb

    .line 209
    const/4 v8, 0x0

    .line 211
    .local v8, "debug":Z
    :goto_2c
    if-eqz v8, :cond_5e

    .line 212
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v16, "Resolving type "

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " scheme "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 213
    const-string v16, " of intent "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 216
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_162

    .line 217
    if-eqz v8, :cond_86

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v16, "Action list: "

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_86
    const/4 v14, 0x0

    .line 220
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_88
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_be

    .line 256
    if-eqz v14, :cond_162

    .line 257
    const/4 v10, 0x0

    :goto_91
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_155

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v7, Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/lge/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_b8
    monitor-exit v15

    const/4 v1, 0x1

    .line 268
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_ba
    return v1

    .line 209
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_bb
    const/4 v8, 0x1

    goto/16 :goto_2c

    .line 221
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_be
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;

    .line 222
    .local v13, "receiver":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_e2

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v16, "Matching against filter "

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_e2
    iget-boolean v1, v13, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_f2

    .line 225
    if-eqz v8, :cond_ef

    .line 226
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_ef
    :goto_ef
    add-int/lit8 v10, v10, 0x1

    goto :goto_88

    .line 231
    :cond_f2
    iget-object v1, v13, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 232
    const-string v7, "LocalBroadcastManager"

    .line 231
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 233
    .local v11, "match":I
    if-ltz v11, :cond_12b

    .line 234
    if-eqz v8, :cond_11a

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v16, "  Filter matched!  match=0x"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_11a
    if-nez v14, :cond_121

    .line 237
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_121
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_ef

    .line 201
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_128
    move-exception v1

    monitor-exit v15
    :try_end_12a
    .catchall {:try_start_5 .. :try_end_12a} :catchall_128

    throw v1

    .line 242
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_12b
    if-eqz v8, :cond_ef

    .line 244
    packed-switch v11, :pswitch_data_166

    .line 249
    :try_start_130
    const-string v12, "unknown reason"

    .line 251
    .local v12, "reason":Ljava/lang/String;
    :goto_132
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v16, "  Filter did not match: "

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 245
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_149
    const-string v12, "action"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_132

    .line 246
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_14c
    const-string v12, "category"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_132

    .line 247
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_14f
    const-string v12, "data"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_132

    .line 248
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_152
    const-string v12, "type"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_132

    .line 258
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;
    :cond_155
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 257
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_91

    .line 201
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_162
    monitor-exit v15
    :try_end_163
    .catchall {:try_start_130 .. :try_end_163} :catchall_128

    .line 268
    const/4 v1, 0x0

    goto/16 :goto_ba

    .line 244
    :pswitch_data_166
    .packed-switch -0x4
        :pswitch_14c
        :pswitch_149
        :pswitch_14f
        :pswitch_152
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/lge/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0}, Lcom/lge/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 280
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 164
    iget-object v8, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    .line 165
    :try_start_3
    iget-object v7, p0, Lcom/lge/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 166
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v2, :cond_f

    .line 167
    monitor-exit v8

    .line 188
    :goto_e
    return-void

    .line 169
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_1b

    .line 164
    monitor-exit v8

    goto :goto_e

    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :catchall_18
    move-exception v7

    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v7

    .line 170
    .restart local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v3    # "i":I
    :cond_1b
    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 171
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-lt v4, v7, :cond_2b

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 172
    :cond_2b
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 174
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_4b

    .line 175
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_4e

    .line 181
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_4b

    .line 182
    iget-object v7, p0, Lcom/lge/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v5    # "k":I
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 176
    .restart local v5    # "k":I
    :cond_4e
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v7, v7, Lcom/lge/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v7, p1, :cond_5d

    .line 177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_18

    .line 178
    add-int/lit8 v5, v5, -0x1

    .line 175
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a
.end method
