.class public Lcom/lge/app/permission/RequestPermissionsHelper;
.super Ljava/lang/Object;
.source "RequestPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;,
        Lcom/lge/app/permission/RequestPermissionsHelper$BindService;,
        Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ACTION_BROADCAST_AGAIN:Ljava/lang/String; = "com.lge.app.permission.action.BROADCAST_AGAIN"

.field private static final DEBUG:Z = true

.field static final PERMISSION_REQUEST_HISTORY_PREF:Ljava/lang/String; = "com.lge.app.permission.request_history"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/lge/app/permission/RequestPermissionsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/app/permission/RequestPermissionsHelper;->$assertionsDisabled:Z

    .line 41
    const-class v0, Lcom/lge/app/permission/RequestPermissionsHelper;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;

    .line 48
    return-void

    .line 39
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flag"    # I

    .prologue
    .line 528
    new-instance v0, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILcom/lge/app/permission/RequestPermissionsHelper$BindClient;)V

    # invokes: Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->bind()Z
    invoke-static {v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;->access$5(Lcom/lge/app/permission/RequestPermissionsHelper$BindClient;)Z

    move-result v0

    return v0
.end method

.method public static filterOutGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "notGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v4, :cond_13

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 140
    .local v2, "requiredPermissions":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    return-object v2

    .line 134
    .end local v2    # "requiredPermissions":[Ljava/lang/String;
    :cond_13
    aget-object v1, p1, v3

    .line 135
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1f

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public static getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 169
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_6
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 171
    .local v2, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 172
    .local v1, "gi":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_15} :catch_17

    move-result-object v4

    return-object v4

    .line 173
    .end local v1    # "gi":Landroid/content/pm/PermissionGroupInfo;
    .end local v2    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_17
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 99
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    .line 124
    :goto_9
    return-object v1

    .line 111
    :cond_a
    const-string v1, "com.lge.app.permission.request_history"

    .line 110
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    .line 114
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    goto :goto_9

    .line 120
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 122
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    goto :goto_9

    .line 124
    :cond_26
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED_FIXED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    goto :goto_9
.end method

.method public static handlePermissionRequestResult(Landroid/app/Activity;[Ljava/lang/String;ZLcom/lge/app/permission/GuideUiProvider;)Z
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "isActivatedByUser"    # Z
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 674
    .line 675
    const-string v5, "com.lge.app.permission.request_history"

    .line 674
    invoke-virtual {p0, v5, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 676
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 677
    .local v2, "prefs":Landroid/content/SharedPreferences$Editor;
    array-length v6, p1

    move v5, v3

    :goto_e
    if-lt v5, v6, :cond_1a

    .line 680
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    invoke-static {p0, p1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 697
    :goto_19
    return v3

    .line 677
    :cond_1a
    aget-object v1, p1, v5

    .line 678
    .local v1, "p":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 684
    .end local v1    # "p":Ljava/lang/String;
    :cond_22
    invoke-static {p0, p1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 685
    if-eqz p2, :cond_30

    .line 687
    const/4 v3, 0x0

    .line 686
    invoke-static {p0, p1, p3, v3}, Lcom/lge/app/permission/RequestPermissionsActivity;->showPopup(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2e
    :goto_2e
    move v3, v4

    .line 697
    goto :goto_19

    .line 691
    :cond_30
    invoke-interface {p3, p0, p1}, Lcom/lge/app/permission/GuideUiProvider;->getDisabledFeatures(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 693
    .local v0, "message":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is unavailable due to no permissions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2e
.end method

.method public static hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    array-length v3, p1

    move v2, v1

    :goto_3
    if-lt v2, v3, :cond_6

    .line 152
    :goto_5
    return v1

    .line 146
    :cond_6
    aget-object v0, p1, v2

    .line 147
    .local v0, "perm":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;->NOT_GRANTED_FIXED:Lcom/lge/app/permission/RequestPermissionsHelper$PermissionStatus;

    if-ne v4, v5, :cond_2a

    .line 148
    sget-object v1, Lcom/lge/app/permission/RequestPermissionsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is force denied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x1

    goto :goto_5

    .line 146
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v2, "hasPermission"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 63
    :try_start_6
    array-length v3, p1
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_1e

    move v2, v1

    :goto_8
    if-lt v2, v3, :cond_f

    .line 70
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 68
    const/4 v1, 0x1

    :goto_e
    return v1

    .line 63
    :cond_f
    :try_start_f
    aget-object v0, p1, v2

    .line 64
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    move-result v4

    if-eqz v4, :cond_1b

    .line 70
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_e

    .line 63
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 69
    .end local v0    # "permission":Ljava/lang/String;
    :catchall_1e
    move-exception v1

    .line 70
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 71
    throw v1
.end method

.method public static intentForPermissionSettings(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_2f

    .line 189
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    :cond_2f
    return-object v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 501
    .line 502
    new-instance v0, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v0}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    .line 501
    invoke-static {p0, p1, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Landroid/os/IBinder;
    .registers 5
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-static {p0, p1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 508
    new-instance v1, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)V

    # invokes: Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->onBind()Landroid/os/IBinder;
    invoke-static {v1}, Lcom/lge/app/permission/RequestPermissionsHelper$BindService;->access$5(Lcom/lge/app/permission/RequestPermissionsHelper$BindService;)Landroid/os/IBinder;

    move-result-object v0

    .line 510
    :cond_10
    return-object v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 226
    .line 227
    new-instance v0, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v0}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    .line 226
    invoke-static {p0, p1, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Z
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 233
    invoke-static {p0, p1, p2}, Lcom/lge/app/permission/RequestPermissionsActivity;->startForActivity(Landroid/app/Activity;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    .line 276
    new-instance v0, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v0}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    .line 275
    invoke-static {p0, p1, p2, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)Z
    .registers 5
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 282
    invoke-static {p0, p1, p2, p3}, Lcom/lge/app/permission/RequestPermissionsActivity;->startForService(Landroid/app/Service;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)V

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static requestPermissionsIfNeeded(Landroid/content/Context;Landroid/appwidget/AppWidgetProvider;Landroid/appwidget/AppWidgetManager;[I[Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetProvider"    # Landroid/appwidget/AppWidgetProvider;
    .param p2, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 398
    .line 399
    new-instance v5, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v5}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 398
    invoke-static/range {v0 .. v5}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/content/Context;Landroid/appwidget/AppWidgetProvider;Landroid/appwidget/AppWidgetManager;[I[Ljava/lang/String;Lcom/lge/app/permission/AppWidgetUiProvider;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/content/Context;Landroid/appwidget/AppWidgetProvider;Landroid/appwidget/AppWidgetManager;[I[Ljava/lang/String;Lcom/lge/app/permission/AppWidgetUiProvider;)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetProvider"    # Landroid/appwidget/AppWidgetProvider;
    .param p2, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "permissions"    # [Ljava/lang/String;
    .param p5, "uiProvider"    # Lcom/lge/app/permission/AppWidgetUiProvider;

    .prologue
    const/4 v7, 0x0

    .line 406
    invoke-static {p0, p4}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 411
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v5, "updateIntent":Landroid/content/Intent;
    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v8, "appWidgetIds"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 417
    invoke-static {p0, p4}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasForceDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 421
    invoke-static {p0, p4, v5, p5}, Lcom/lge/app/permission/RequestPermissionsActivity;->getIntentForAppWidget(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)Landroid/content/Intent;

    move-result-object v3

    .line 434
    .local v3, "requestPermissionIntent":Landroid/content/Intent;
    :goto_24
    const/high16 v8, 0x8000000

    .line 432
    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 437
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {p0, p4}, Lcom/lge/app/permission/RequestPermissionsHelper;->filterOutGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "requiredPermissions":[Ljava/lang/String;
    sget-boolean v7, Lcom/lge/app/permission/RequestPermissionsHelper;->$assertionsDisabled:Z

    if-nez v7, :cond_42

    array-length v7, v4

    if-gtz v7, :cond_42

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "no required permissions."

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 426
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "requestPermissionIntent":Landroid/content/Intent;
    .end local v4    # "requiredPermissions":[Ljava/lang/String;
    :cond_3d
    invoke-static {p0}, Lcom/lge/app/permission/RequestPermissionsHelper;->intentForPermissionSettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "requestPermissionIntent":Landroid/content/Intent;
    goto :goto_24

    .line 445
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    .restart local v4    # "requiredPermissions":[Ljava/lang/String;
    :cond_42
    invoke-interface {p5, p0, v4}, Lcom/lge/app/permission/AppWidgetUiProvider;->getGuideMessageForAppWidget(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    .local v0, "message":Ljava/lang/CharSequence;
    invoke-interface {p5, p0, v4, v2, v0}, Lcom/lge/app/permission/AppWidgetUiProvider;->getRemoteViews(Landroid/content/Context;[Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 452
    .local v6, "views":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v1, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {p2, v1, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 454
    const/4 v7, 0x1

    .line 456
    .end local v0    # "message":Ljava/lang/CharSequence;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "requestPermissionIntent":Landroid/content/Intent;
    .end local v4    # "requiredPermissions":[Ljava/lang/String;
    .end local v5    # "updateIntent":Landroid/content/Intent;
    .end local v6    # "views":Landroid/widget/RemoteViews;
    :cond_57
    return v7
.end method

.method public static requestPermissionsIfNeeded(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/Intent;[Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 325
    .line 326
    new-instance v0, Lcom/lge/app/permission/DefaultUiProvider;

    invoke-direct {v0}, Lcom/lge/app/permission/DefaultUiProvider;-><init>()V

    .line 325
    invoke-static {p0, p1, p2, p3, v0}, Lcom/lge/app/permission/RequestPermissionsHelper;->requestPermissionsIfNeeded(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/Intent;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsIfNeeded(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/Intent;[Ljava/lang/String;Lcom/lge/app/permission/GuideUiProvider;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "uiProvider"    # Lcom/lge/app/permission/GuideUiProvider;

    .prologue
    .line 332
    invoke-static {p0, p3}, Lcom/lge/app/permission/RequestPermissionsHelper;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 334
    invoke-static {v1}, Lcom/lge/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/lge/content/LocalBroadcastManager;

    move-result-object v0

    .line 336
    .local v0, "lbm":Lcom/lge/content/LocalBroadcastManager;
    new-instance v1, Lcom/lge/app/permission/RequestPermissionsHelper$1;

    invoke-direct {v1, p1, p2, v0}, Lcom/lge/app/permission/RequestPermissionsHelper$1;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Intent;Lcom/lge/content/LocalBroadcastManager;)V

    .line 346
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.lge.app.permission.action.BROADCAST_AGAIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/lge/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.app.permission.action.BROADCAST_AGAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-static {p0, p3, v1, p4}, Lcom/lge/app/permission/RequestPermissionsActivity;->startForReceiver(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;Lcom/lge/app/permission/GuideUiProvider;)V

    .line 349
    const/4 v1, 0x1

    .line 351
    .end local v0    # "lbm":Lcom/lge/content/LocalBroadcastManager;
    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method
