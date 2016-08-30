.class public Lcom/lge/app/permission/DefaultUiProvider;
.super Ljava/lang/Object;
.source "DefaultUiProvider.java"

# interfaces
.implements Lcom/lge/app/permission/AppWidgetUiProvider;
.implements Lcom/lge/app/permission/GuideUiProvider;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGuideMessageForAppWidget(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 38
    if-nez v1, :cond_d

    .line 40
    sget v1, Lcom/lge/internal/R$string;->widget_no_permission_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, "message":Ljava/lang/CharSequence;
    :goto_c
    return-object v0

    .line 44
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_d
    sget v1, Lcom/lge/internal/R$string;->widget_no_permission_message_go_to_settings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 43
    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_c
.end method

.method public getReasonForRequestingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "<reason here>"

    return-object v0
.end method

.method public getRemoteViews(Landroid/content/Context;[Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "defaultMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 22
    sget v2, Lcom/lge/internal/R$layout;->widget_no_permission:I

    .line 21
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    .local v0, "views":Landroid/widget/RemoteViews;
    sget v1, Lcom/lge/internal/R$id;->widget_no_permission:I

    .line 24
    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 28
    sget v1, Lcom/lge/internal/R$id;->widget_no_permission_message:I

    .line 27
    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 30
    return-object v0
.end method

.method public getRequestPermissionsActivity()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/app/permission/RequestPermissionsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const-class v0, Lcom/lge/app/permission/RequestPermissionsActivity;

    return-object v0
.end method
