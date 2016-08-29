.class public final enum Lcom/lge/mirrorlink/upnp/TmErrorCode;
.super Ljava/lang/Enum;
.source "TmErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mirrorlink/upnp/TmErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum BAD_NOTIID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum CANNOT_DETERMINE_STATUS:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum DEVICE_LOCKED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum INVALID_ARGUMENT:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum INVALID_PROFILE:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum RESOURCE_BUSY:Lcom/lge/mirrorlink/upnp/TmErrorCode;

.field public static final enum UNAUTHORIZED_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "INTERNAL_SERVER_ERROR"

    const-string/jumbo v2, "Internal Server Error"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INTERNAL_SERVER_ERROR:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 6
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "OPERATION_REJECTED"

    const-string/jumbo v2, "Operation Rejected"

    const/16 v3, 0x2bd

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 7
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "BAD_APPID"

    const-string/jumbo v2, "Bad AppID"

    const/16 v3, 0x32a

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 8
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "BAD_NOTIID"

    const-string/jumbo v2, "Bad NotiID"

    const/16 v3, 0x32a

    invoke-direct {v0, v1, v8, v3, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_NOTIID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 9
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "UNAUTHORIZED_APPID"

    const-string/jumbo v2, "Unauthorized App ID"

    const/16 v3, 0x32b

    invoke-direct {v0, v1, v9, v3, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->UNAUTHORIZED_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 10
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "CANNOT_DETERMINE_STATUS"

    const-string/jumbo v2, "Cannot Determine Status"

    const/4 v3, 0x5

    const/16 v4, 0x32c

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->CANNOT_DETERMINE_STATUS:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 11
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "LAUNCH_FAILED"

    const-string/jumbo v2, "Launch Failed"

    const/4 v3, 0x6

    const/16 v4, 0x32d

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 12
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "RESOURCE_BUSY"

    const-string/jumbo v2, "Resource Busy"

    const/4 v3, 0x7

    const/16 v4, 0x32e

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->RESOURCE_BUSY:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 13
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "DEVICE_LOCKED"

    const-string/jumbo v2, "Device Locked"

    const/16 v3, 0x8

    const/16 v4, 0x32f

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->DEVICE_LOCKED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 14
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "INVALID_ARGUMENT"

    const-string/jumbo v2, "Invalid Argument"

    const/16 v3, 0x9

    const/16 v4, 0x334

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_ARGUMENT:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 15
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "INVALID_PROFILE"

    const-string/jumbo v2, "Invalid Profile"

    const/16 v3, 0xa

    const/16 v4, 0x339

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 16
    new-instance v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const-string/jumbo v1, "INVALID_PROFILE_ID"

    const-string/jumbo v2, "Invalid Profile ID"

    const/16 v3, 0xb

    const/16 v4, 0x33e

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/lge/mirrorlink/upnp/TmErrorCode;

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INTERNAL_SERVER_ERROR:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_NOTIID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->UNAUTHORIZED_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->CANNOT_DETERMINE_STATUS:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->RESOURCE_BUSY:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->DEVICE_LOCKED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_ARGUMENT:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->$VALUES:[Lcom/lge/mirrorlink/upnp/TmErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->code:I

    .line 24
    iput-object p4, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->message:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;
    .registers 4
    .param p0, "code"    # Lcom/lge/mirrorlink/upnp/TmErrorCode;

    .prologue
    .line 49
    new-instance v0, Lcom/lge/mirrorlink/upnp/ActionException;

    iget v1, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->code:I

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/ActionException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static getByCode(I)Lcom/lge/mirrorlink/upnp/TmErrorCode;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 39
    invoke-static {}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->values()[Lcom/lge/mirrorlink/upnp/TmErrorCode;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_12

    aget-object v0, v2, v1

    .line 40
    .local v0, "errorCode":Lcom/lge/mirrorlink/upnp/TmErrorCode;
    iget v4, v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->code:I

    if-ne v4, p0, :cond_f

    .line 41
    return-object v0

    .line 39
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44
    .end local v0    # "errorCode":Lcom/lge/mirrorlink/upnp/TmErrorCode;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/TmErrorCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/lge/mirrorlink/upnp/TmErrorCode;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->$VALUES:[Lcom/lge/mirrorlink/upnp/TmErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
