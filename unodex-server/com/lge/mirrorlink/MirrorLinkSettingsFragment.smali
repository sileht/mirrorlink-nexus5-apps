.class public Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "MirrorLinkSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;,
        Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;,
        Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;,
        Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_APP_LIST:I = 0x2

.field private static final NCM_RELEASE_PREPARE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MirrorLink_Settings"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListCategory:Landroid/preference/PreferenceCategory;

.field mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

.field private mContext:Landroid/content/Context;

.field private mGuidePreference:Landroid/preference/Preference;

.field private mMenuCategory:Landroid/preference/PreferenceCategory;

.field private mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

.field private mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

.field private mPrefClickListener:Lcom/lge/mirrorlink/PrefClickListener;

.field mSwitchCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Lcom/lge/mirrorlink/MirrorLinkPreference;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->setupNCM()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->updateAppList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->updateSwitchCheckPref()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppList:Ljava/util/List;

    .line 59
    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    .line 142
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$1;-><init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;-><init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .line 195
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$3;-><init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 43
    return-void
.end method

.method private setupNCM()V
    .registers 5

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 289
    .local v1, "usbManager":Landroid/hardware/usb/UsbManager;
    const-string/jumbo v2, "ncm"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v2, "MirrorLink_Settings"

    const-string/jumbo v3, "send broadcast msg com.lge.mirrorlink.server.START"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mirrorlink.server.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private updateAppList()V
    .registers 11

    .prologue
    const v9, 0x7f090006

    const/4 v8, 0x0

    .line 223
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v3

    .line 224
    .local v3, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v3, :cond_b

    .line 225
    return-void

    .line 228
    :cond_b
    iget-object v7, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 230
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 231
    .local v4, "ctx":Landroid/content/Context;
    if-nez v4, :cond_17

    .line 232
    return-void

    .line 236
    :cond_17
    invoke-virtual {v3, v8, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppList(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 237
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    const/4 v5, 0x0

    .line 238
    .local v5, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 239
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v7

    if-nez v7, :cond_20

    .line 242
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 244
    .local v6, "pref":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 245
    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 251
    :goto_40
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 254
    iget-object v7, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mPrefClickListener:Lcom/lge/mirrorlink/PrefClickListener;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 256
    iget-object v7, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 246
    :cond_62
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isSelfCertified()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 247
    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_40

    .line 249
    :cond_6c
    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_40

    .line 260
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_73
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isLoadAppCompleted()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 261
    if-nez v5, :cond_8b

    .line 262
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 263
    .restart local v6    # "pref":Landroid/preference/Preference;
    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 264
    iget-object v7, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_8b
    return-void
.end method

.method private updateSwitchCheckPref()V
    .registers 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getUsbPref()Z

    move-result v0

    .line 271
    .local v0, "isUsbConnected":Z
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 272
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 274
    if-eqz v0, :cond_26

    .line 275
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getSwitchPref()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 269
    :goto_25
    return-void

    .line 278
    :cond_26
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_25
.end method


# virtual methods
.method addPreferencesForActivity()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->addPreferencesFromResource(I)V

    .line 88
    new-instance v1, Landroid/preference/Preference;

    const v2, 0x7f0a003a

    invoke-direct {v1, v0, v4, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    .line 89
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 90
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 91
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 92
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mGuidePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 95
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 97
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 99
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mSwitchCheckPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 102
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, v0, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    .line 103
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    .line 67
    new-instance v2, Lcom/lge/mirrorlink/MirrorLinkPreference;

    iget-object v3, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkPreference:Lcom/lge/mirrorlink/MirrorLinkPreference;

    .line 68
    new-instance v2, Lcom/lge/mirrorlink/PrefClickListener;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/mirrorlink/PrefClickListener;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mPrefClickListener:Lcom/lge/mirrorlink/PrefClickListener;

    .line 70
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->addPreferencesForActivity()V

    .line 72
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lge/mirrorlink/MirrorLinkServerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 76
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_46

    .line 77
    const-string/jumbo v2, "MirrorLink_Settings"

    const-string/jumbo v3, "onServiceConnected : register app list listener"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->registAppListChangeListener(Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;)V

    .line 63
    :cond_46
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 216
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    if-eqz v0, :cond_19

    .line 136
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iput-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    .line 130
    :cond_19
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->handler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    if-nez v0, :cond_7f

    .line 117
    const-string/jumbo v0, "MirrorLink_Settings"

    const-string/jumbo v1, "onClicked : register USB_STATE Receiver"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;-><init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    .line 119
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.lge.mirrorlink.action.started"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.lge.mirrorlink.action.stopped"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.lge.mirrorlink.action.destroyed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.lge.mirrorlink.action.updatelist"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->mMirrorLinkReceiver:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.lge.mirrorlink.action.updateswitch"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_7f
    invoke-direct {p0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->updateSwitchCheckPref()V

    .line 110
    return-void
.end method
