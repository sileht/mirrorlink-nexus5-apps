.class public Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;
.super Lcom/android/internal/policy/PhoneFallbackEventHandler;
.source "FolderPhoneFallbackEventHandler.java"


# static fields
.field private static final CALLTYPE_OUTGOING_ALERT:I = 0x17

.field private static final CALLTYPE_ROAMING_FIELD_SEND_CALLTO:I = 0x458

.field private static final CALLTYPE_ROAMING_SEND_CALLTO:I = 0x457

.field private static final CALLTYPE_SEND_CONFERENCE:I = 0xc

.field private static final CALLTYPE_VOLTE_CALL_MESSAGE_SENDTO:I = 0x2712

.field private static final CALLTYPE_VOLTE_SENDTO:I = 0x1966

.field private static final TAG:Ljava/lang/String; = "FolderPhoneFallbackEventHandler"


# instance fields
.field private mIsJCM:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mServiceState:Landroid/telephony/ServiceState;

    .line 42
    const-string v0, "JCM"

    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mIsJCM:Z

    .line 309
    new-instance v0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler$1;-><init>(Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;)V

    iput-object v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 46
    return-void

    .line 42
    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private LaunchComposeMessageActivity()V
    .registers 5

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :try_start_23
    iget-object v1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_2e} :catch_2f

    .line 139
    :goto_2e
    return-void

    .line 137
    :catch_2f
    move-exception v1

    const-string v1, "FolderPhoneFallbackEventHandler"

    const-string v2, "No activity found for android.intent.action.ACTION_CALL !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method static synthetic access$0(Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;Landroid/telephony/ServiceState;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method private getLastOutgoingNumber()Ljava/lang/String;
    .registers 9

    .prologue
    .line 228
    const/4 v6, 0x0

    .line 231
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    .line 234
    const-string v3, "type=2 or type=12 or type=1111 or type=1112 or type=6502 or type=10002 or type=23"

    .line 241
    const/4 v4, 0x0

    .line 242
    const-string v5, "date DESC LIMIT 1"

    .line 231
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    if-eqz v6, :cond_22

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2f

    move-result v0

    if-nez v0, :cond_29

    .line 244
    :cond_22
    const/4 v7, 0x0

    .line 249
    .local v7, "lastOutgoingNumber":Ljava/lang/String;
    :goto_23
    if-eqz v6, :cond_28

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_28
    return-object v7

    .line 246
    .end local v7    # "lastOutgoingNumber":Ljava/lang/String;
    :cond_29
    const/4 v0, 0x0

    :try_start_2a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    move-result-object v7

    .line 248
    .restart local v7    # "lastOutgoingNumber":Ljava/lang/String;
    goto :goto_23

    .end local v7    # "lastOutgoingNumber":Ljava/lang/String;
    :catchall_2f
    move-exception v0

    .line 249
    if-eqz v6, :cond_35

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_35
    throw v0
.end method

.method private isEmegencyServiceState()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 285
    .local v0, "currentState":I
    :goto_b
    const-string v2, "FolderPhoneFallbackEventHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startRecentCallActivity() : currentState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (IN_SERVICE(0) / OUT_OF_SERVICE(1) / EMERGENCY_ONLY(2))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eq v0, v1, :cond_2a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    .line 289
    :cond_2a
    :goto_2a
    return v1

    .line 284
    .end local v0    # "currentState":I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_b

    .line 289
    .restart local v0    # "currentState":I
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private isHomeTopActivity()Z
    .registers 9

    .prologue
    .line 191
    iget-object v6, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 192
    iget-object v6, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "topPackage":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 196
    .local v4, "mPm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_27

    .line 197
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_29

    .line 211
    .end local v2    # "i":I
    :cond_27
    const/4 v6, 0x0

    return v6

    .line 199
    .restart local v2    # "i":I
    :cond_29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v0, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 201
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_45

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 202
    iget-object v6, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_21
.end method

.method private isIMEShowing()Z
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method private launchMessageApp()V
    .registers 5

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_28} :catch_29

    .line 126
    :goto_28
    return-void

    .line 124
    :catch_29
    move-exception v1

    const-string v1, "FolderPhoneFallbackEventHandler"

    const-string v2, "No activity found for android.intent.action.ACTION_CALL !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private onKeyDownByCallKey(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 144
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_14

    if-nez v0, :cond_16

    :cond_14
    move v1, v2

    .line 165
    :cond_15
    :goto_15
    return v1

    .line 148
    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2f

    .line 149
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isHomeTopActivity()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_15

    .line 153
    :cond_2f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 155
    iget-object v3, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 157
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isHomeTopActivity()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isEmegencyServiceState()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 159
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->startEmegencyCallActivity()V

    goto :goto_15

    .line 161
    :cond_53
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->startRecentCallActivity()V

    goto :goto_15
.end method

.method private onKeyDownMessageKey(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 78
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v0, :cond_14

    .line 92
    :cond_13
    :goto_13
    return v1

    .line 82
    :cond_14
    iget-boolean v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mIsJCM:Z

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isIMEShowing()Z

    move-result v2

    if-nez v2, :cond_13

    .line 86
    :cond_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_29

    .line 87
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 92
    :cond_27
    :goto_27
    const/4 v1, 0x1

    goto :goto_13

    .line 88
    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 89
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->LaunchComposeMessageActivity()V

    goto :goto_27
.end method

.method private onKeyUpByCallKey(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 170
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_c

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 174
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 187
    :goto_1f
    return v1

    .line 178
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_39

    .line 179
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isHomeTopActivity()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 180
    iget-boolean v1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mIsJCM:Z

    if-eqz v1, :cond_3b

    .line 181
    invoke-super {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    .line 187
    :cond_39
    :goto_39
    const/4 v1, 0x1

    goto :goto_1f

    .line 183
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->startCallLogActivity()V

    goto :goto_39
.end method

.method private onKeyUpMessageKey(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 97
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_c

    .line 98
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 101
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 112
    :cond_16
    :goto_16
    return v1

    .line 105
    :cond_17
    iget-boolean v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mIsJCM:Z

    if-eqz v2, :cond_21

    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->isIMEShowing()Z

    move-result v2

    if-nez v2, :cond_16

    .line 109
    :cond_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_30

    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->launchMessageApp()V

    .line 112
    :cond_30
    const/4 v1, 0x1

    goto :goto_16
.end method

.method private startCallLogActivity()V
    .registers 5

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 295
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.DialtactsRecentCallsEntryActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    :try_start_23
    iget-object v2, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_28} :catch_29

    .line 307
    :goto_28
    return-void

    .line 305
    :catch_29
    move-exception v2

    const-string v2, "FolderPhoneFallbackEventHandler"

    const-string v3, "No activity found for android.intent.action.VIEW."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private startEmegencyCallActivity()V
    .registers 3

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method private startRecentCallActivity()V
    .registers 5

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->getLastOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "lastOutgoingNumber":Ljava/lang/String;
    const-string v1, "FolderPhoneFallbackEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startRecentCallActivity() : lastOutgoingNumber="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->startRecentCallActivityInner(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private startRecentCallActivityInner(Ljava/lang/String;)V
    .registers 6
    .param p1, "lastOutgoingNumber"    # Ljava/lang/String;

    .prologue
    .line 257
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ".*#.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 260
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "#"

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    :goto_23
    invoke-virtual {p0}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 267
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    :try_start_2b
    iget-object v1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_30} :catch_4c

    .line 274
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_30
    :goto_30
    return-void

    .line 263
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_31
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_23

    .line 271
    :catch_4c
    move-exception v1

    const-string v1, "FolderPhoneFallbackEventHandler"

    const-string v2, "No activity found for android.intent.action.ACTION_CALL !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method


# virtual methods
.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 52
    invoke-direct {p0, p2}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->onKeyDownByCallKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 59
    :goto_7
    return v0

    .line 55
    :cond_8
    const/16 v0, 0xad

    if-ne p1, v0, :cond_11

    .line 56
    invoke-direct {p0, p2}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->onKeyDownMessageKey(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 59
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 65
    invoke-direct {p0, p2}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->onKeyUpByCallKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 72
    :goto_7
    return v0

    .line 68
    :cond_8
    const/16 v0, 0xad

    if-ne p1, v0, :cond_11

    .line 69
    invoke-direct {p0, p2}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->onKeyUpMessageKey(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 72
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method
