.class public Lcom/lge/concierge/sdk/SmartCard;
.super Ljava/lang/Object;
.source "SmartCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/concierge/sdk/SmartCard$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/concierge/sdk/SmartCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_SMART_CARD:Ljava/lang/String; = "extra_card_parcelable"

.field public static final EXTRA_SMART_CARD_BUTTON_1_ACTIONS:Ljava/lang/String; = "extra_smart_card_button_1_actions"

.field public static final EXTRA_SMART_CARD_BUTTON_1_TEXT:Ljava/lang/String; = "extra_smart_card_button_1_text"

.field public static final EXTRA_SMART_CARD_BUTTON_2_ACTIONS:Ljava/lang/String; = "extra_smart_card_button_2_actions"

.field public static final EXTRA_SMART_CARD_BUTTON_2_TEXT:Ljava/lang/String; = "extra_smart_card_button_2_text"

.field public static final EXTRA_SMART_CARD_CATEGORY:Ljava/lang/String; = "extra_smart_card_category"

.field public static final EXTRA_SMART_CARD_CONFIRM_ACTIONS:Ljava/lang/String; = "extra_smart_card_confirm_actions"

.field public static final EXTRA_SMART_CARD_CONFIRM_DESCRIPTION:Ljava/lang/String; = "extra_smart_card_confirm_description"

.field public static final EXTRA_SMART_CARD_CONTENT_VIEW:Ljava/lang/String; = "extra_smart_card_content_view"

.field public static final EXTRA_SMART_CARD_DESCRIPTION:Ljava/lang/String; = "extra_smart_card_source"

.field public static final EXTRA_SMART_CARD_EXPIRED_TIME:Ljava/lang/String; = "extra_smart_card_expired_time"

.field public static final EXTRA_SMART_CARD_ID:Ljava/lang/String; = "extra_smart_card_id"

.field public static final EXTRA_SMART_CARD_NAME:Ljava/lang/String; = "extra_smart_card_name"

.field public static final EXTRA_SMART_CARD_SUMMARY:Ljava/lang/String; = "extra_smart_card_summary"


# instance fields
.field public mButton1Actions:[Ljava/lang/String;

.field public mButton1IconNumForWearable:I

.field public mButton1Text:Ljava/lang/String;

.field public mButton2Actions:[Ljava/lang/String;

.field public mButton2IconNumForWearable:I

.field public mButton2Text:Ljava/lang/String;

.field public mCardId:Ljava/lang/String;

.field public final mCategory:Ljava/lang/String;

.field public mConfirmPopupActions:[Ljava/lang/String;

.field public mConfirmPopupDesc:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mDescriptionAutoTimeParam:J

.field public mExpiredTime:J

.field public mExtraImg:Landroid/graphics/Bitmap;

.field public mExtraOptions:[Ljava/lang/String;

.field public mIconNew:Landroid/graphics/Bitmap;

.field public mIconNormal:Landroid/graphics/Bitmap;

.field public mIsNotificationRequired:Z

.field public mIsRead:Z

.field public mIsUpdated:Z

.field public mIssuedTime:J

.field public mKeyDataValue:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mRawUri:Ljava/lang/String;

.field public mRemoteViews:Landroid/widget/RemoteViews;

.field public mSummary:Ljava/lang/String;

.field public mSummaryAutoTimeParam:J

.field public mTemplateNum:I

.field public mWearableNotiType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 229
    new-instance v0, Lcom/lge/concierge/sdk/SmartCard$1;

    invoke-direct {v0}, Lcom/lge/concierge/sdk/SmartCard$1;-><init>()V

    .line 228
    sput-object v0, Lcom/lge/concierge/sdk/SmartCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 237
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JJZZJJLjava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII[Ljava/lang/String;)V
    .registers 37
    .param p1, "templateNum"    # I
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "iconNew"    # Landroid/graphics/Bitmap;
    .param p6, "iconNormal"    # Landroid/graphics/Bitmap;
    .param p7, "summary"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "button1Text"    # Ljava/lang/String;
    .param p10, "button1Actions"    # [Ljava/lang/String;
    .param p11, "button2Text"    # Ljava/lang/String;
    .param p12, "button2Actions"    # [Ljava/lang/String;
    .param p13, "confirmPopupDesc"    # Ljava/lang/String;
    .param p14, "confirmPopupActions"    # [Ljava/lang/String;
    .param p15, "issuedTime"    # J
    .param p17, "expiredTime"    # J
    .param p19, "isUpdated"    # Z
    .param p20, "isRead"    # Z
    .param p21, "summaryAutoTimeParam"    # J
    .param p23, "descriptionAutoTimeParam"    # J
    .param p25, "keyDataValue"    # Ljava/lang/String;
    .param p26, "extraImg"    # Landroid/graphics/Bitmap;
    .param p27, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p28, "rawUri"    # Ljava/lang/String;
    .param p29, "isNotificationRequired"    # Z
    .param p30, "wearableNotiType"    # I
    .param p31, "button1IconNumForWearable"    # I
    .param p32, "button2IconNumForWearable"    # I
    .param p33, "extraOptions"    # [Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsNotificationRequired:Z

    .line 73
    iput p1, p0, Lcom/lge/concierge/sdk/SmartCard;->mTemplateNum:I

    .line 74
    iput-object p2, p0, Lcom/lge/concierge/sdk/SmartCard;->mCardId:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/lge/concierge/sdk/SmartCard;->mName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/lge/concierge/sdk/SmartCard;->mCategory:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    .line 78
    iput-object p6, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    .line 79
    iput-object p7, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummary:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescription:Ljava/lang/String;

    .line 81
    iput-object p9, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Text:Ljava/lang/String;

    .line 82
    iput-object p10, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Actions:[Ljava/lang/String;

    .line 83
    iput-object p11, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Text:Ljava/lang/String;

    .line 84
    iput-object p12, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Actions:[Ljava/lang/String;

    .line 85
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupDesc:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupActions:[Ljava/lang/String;

    .line 87
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIssuedTime:J

    .line 88
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExpiredTime:J

    .line 89
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsUpdated:Z

    .line 90
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsRead:Z

    .line 91
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummaryAutoTimeParam:J

    .line 92
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescriptionAutoTimeParam:J

    .line 93
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mKeyDataValue:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraImg:Landroid/graphics/Bitmap;

    .line 95
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 96
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRawUri:Ljava/lang/String;

    .line 97
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsNotificationRequired:Z

    .line 98
    move/from16 v0, p30

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mWearableNotiType:I

    .line 99
    move/from16 v0, p31

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1IconNumForWearable:I

    .line 100
    move/from16 v0, p32

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2IconNumForWearable:I

    .line 101
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraOptions:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JJZZJJLjava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII[Ljava/lang/String;Lcom/lge/concierge/sdk/SmartCard;)V
    .registers 36

    .prologue
    .line 62
    invoke-direct/range {p0 .. p33}, Lcom/lge/concierge/sdk/SmartCard;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JJZZJJLjava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsNotificationRequired:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mTemplateNum:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mCardId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mCategory:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRawUri:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e7

    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsNotificationRequired:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mWearableNotiType:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummary:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescription:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Text:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Actions:[Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1IconNumForWearable:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Text:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Actions:[Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2IconNumForWearable:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupDesc:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupActions:[Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mIssuedTime:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mExpiredTime:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ea

    move v0, v1

    :goto_83
    iput-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsUpdated:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8c

    move v2, v1

    :cond_8c
    iput-boolean v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsRead:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummaryAutoTimeParam:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescriptionAutoTimeParam:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mKeyDataValue:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b0

    .line 139
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    .line 142
    :cond_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_c0

    .line 143
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    .line 146
    :cond_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d0

    .line 147
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraImg:Landroid/graphics/Bitmap;

    .line 150
    :cond_d0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_e0

    .line 151
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 154
    :cond_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraOptions:[Ljava/lang/String;

    .line 155
    return-void

    :cond_e7
    move v0, v2

    .line 110
    goto/16 :goto_2c

    :cond_ea
    move v0, v2

    .line 130
    goto :goto_83
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mCardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v1, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2f

    .line 511
    const-string v1, "Bitmap new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_2f
    iget-object v1, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_48

    .line 514
    const-string v1, "Bitmap normal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_48
    const-string v1, "summary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v1, "description : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, "btn1 text : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v1, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Actions:[Ljava/lang/String;

    if-eqz v1, :cond_91

    .line 520
    const-string v1, "btn1 action num : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Actions:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_91
    const-string v1, "btn2 text : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Actions:[Ljava/lang/String;

    if-eqz v1, :cond_b8

    .line 524
    const-string v1, "btn2 action num : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Actions:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_b8
    const-string v1, "issuedTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mIssuedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, "expiredTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/concierge/sdk/SmartCard;->mExpiredTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v1, "template : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lge/concierge/sdk/SmartCard;->mTemplateNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mTemplateNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRawUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsNotificationRequired:Z

    if-eqz v0, :cond_bc

    move v0, v1

    :goto_20
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mWearableNotiType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1Actions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton1IconNumForWearable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2Actions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mButton2IconNumForWearable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mConfirmPopupActions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 181
    iget-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mIssuedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mExpiredTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsUpdated:Z

    if-eqz v0, :cond_bf

    move v0, v1

    :goto_6a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 185
    iget-boolean v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIsRead:Z

    if-eqz v0, :cond_c1

    move v0, v1

    :goto_73
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 187
    iget-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mSummaryAutoTimeParam:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-wide v4, p0, Lcom/lge/concierge/sdk/SmartCard;->mDescriptionAutoTimeParam:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mKeyDataValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c3

    .line 193
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNew:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_92
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c7

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_9e
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_cb

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    :goto_aa
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_cf

    .line 214
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    :goto_b6
    iget-object v0, p0, Lcom/lge/concierge/sdk/SmartCard;->mExtraOptions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 221
    return-void

    :cond_bc
    move v0, v2

    .line 164
    goto/16 :goto_20

    :cond_bf
    move v0, v2

    .line 184
    goto :goto_6a

    :cond_c1
    move v0, v2

    .line 185
    goto :goto_73

    .line 196
    :cond_c3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_92

    .line 203
    :cond_c7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9e

    .line 210
    :cond_cb
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_aa

    .line 217
    :cond_cf
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b6
.end method
