.class public Lcom/lge/constants/MmsHidden;
.super Ljava/lang/Object;
.source "MmsHidden.java"


# static fields
.field public static final ANONY_SPAM_SET:Ljava/lang/String; = "anony_spam_set"

.field public static final AUTHORITY:Ljava/lang/String; = "mmshiddenpref"

.field public static final CHNAGE820:Ljava/lang/String; = "change820"

.field public static final CONFIRM_SEND_MSG:Ljava/lang/String; = "confirm_send_msg"

.field public static final DATABASE_NAME:Ljava/lang/String; = "mmshiddenpref.db"

.field public static final DATABASE_VERSION:I = 0x7

.field public static final DELETEUSIM:Ljava/lang/String; = "pref_key_usim_delete_all"

.field public static final DEVELOPER_MENU:Ljava/lang/String; = "developer_menu"

.field public static final HONEST_SIM_COPY_MODE:Ljava/lang/String; = "honest_sim_copy_mode"

.field public static final KAF_SET:Ljava/lang/String; = "support_op_kaf"

.field public static final KAF_VALUE:Ljava/lang/String; = "persist.service.kaf_set"

.field public static final MMSCODESET:Ljava/lang/String; = "mmscodeset"

.field public static final MMSHIDDENPREF_URI:Landroid/net/Uri;

.field public static final MMS_NOTI_ONLY:Ljava/lang/String; = "mms_noti_only"

.field public static final MODLESLIDESHOW_SET:Ljava/lang/String; = "modelshow_set"

.field public static final NEWMESSAGE_POPUP_VIEW_STATE:Ljava/lang/String; = "noti_new_message_popup"

.field public static final NOTIFICATION_SETTING_STATE:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final ROAMING_APP:Ljava/lang/String; = "roaming_app"

.field public static final ROAMING_AREA:Ljava/lang/String; = "roaming_area"

.field public static final ROAMING_ENV:Ljava/lang/String; = "roamingset"

.field public static final ROAMING_FRAMEWORK:Ljava/lang/String; = "roaming_framework"

.field public static final ROAMING_NONE:Ljava/lang/String; = "roaming_none"

.field public static final ROAMING_STATE:Ljava/lang/String; = "roaming_on_off"

.field public static final SAVE_FILE_LOG:Ljava/lang/String; = "save_file_log"

.field public static final SENDMSG:Ljava/lang/String; = "pref_key_send_msg"

.field public static final SERVICE_PROVIDER:Ljava/lang/String; = "ro.telephony.service_provider"

.field public static final SKAF_SET:Ljava/lang/String; = "support_op_skaf"

.field public static final SKAF_VALUE:Ljava/lang/String; = "persist.service.skaf_set"

.field public static final SMSCODESET:Ljava/lang/String; = "smscodeset"

.field public static final SMSMORE:Ljava/lang/String; = "smsmore"

.field public static final SPAM_SET:Ljava/lang/String; = "spam_set"

.field public static final TABLE_NAME:Ljava/lang/String; = "mmshiddenpref"

.field public static final TAG:Ljava/lang/String; = "MmsHiddenPrefProvider"

.field public static final THRESHOLD:Ljava/lang/String; = "pref_key_storage_threshold_percentage"

.field public static final URL_HIDDENPREF_ALL:I = 0x1

.field public static final VND_ANDROID_DIR_MMSHIDDENPREF:Ljava/lang/String; = "vnd.android.cursor.dir/mmshiddenpref"

.field public static final VND_ANDROID_ITEM_MMSHIDDENPREF:Ljava/lang/String; = "vnd.android.cursor.item/mmshiddenpref"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "content://mmshiddenpref"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/constants/MmsHidden;->MMSHIDDENPREF_URI:Landroid/net/Uri;

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
