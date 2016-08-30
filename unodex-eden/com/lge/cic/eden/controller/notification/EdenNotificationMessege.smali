.class public Lcom/lge/cic/eden/controller/notification/EdenNotificationMessege;
.super Landroid/app/Activity;
.source "EdenNotificationMessege.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/cic/eden/controller/notification/EdenNotificationMessege;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "exception message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/cic/eden/controller/notification/EdenNotificationMessege;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "exception stacktrace"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, "stackTraces":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .local v3, "sb":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_39

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_39
    if-eqz v4, :cond_3f

    .line 24
    array-length v7, v4

    const/4 v6, 0x0

    :goto_3d
    if-lt v6, v7, :cond_56

    .line 28
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0, v5}, Lcom/lge/cic/eden/controller/notification/EdenNotificationMessege;->setContentView(Landroid/view/View;)V

    .line 32
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/lge/cic/eden/controller/notification/EdenNotificationMessege;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 36
    .local v1, "nm":Landroid/app/NotificationManager;
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 37
    return-void

    .line 24
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_56
    aget-object v2, v4, v6

    .line 25
    .local v2, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d
.end method
