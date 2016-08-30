.class public final enum Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;
.super Ljava/lang/Enum;
.source "SplitWindowStateChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EVENT_CANCELED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_CANCELING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_COMPLETED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_CONFIGURING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_PREPARED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_PREPARING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_REQUEST_TO_CANCEL:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_REQUEST_TO_PREPARE:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_SERVICE_CREATED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

.field public static final enum EVENT_SERVICE_READY:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_SERVICE_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_SERVICE_CREATED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 8
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_CONFIGURING"

    invoke-direct {v0, v1, v4}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CONFIGURING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 9
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_SERVICE_READY"

    invoke-direct {v0, v1, v5}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_SERVICE_READY:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 10
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_REQUEST_TO_PREPARE"

    invoke-direct {v0, v1, v6}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_REQUEST_TO_PREPARE:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 11
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_PREPARING"

    invoke-direct {v0, v1, v7}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_PREPARING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 12
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_PREPARED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_PREPARED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 13
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_COMPLETED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 14
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_REQUEST_TO_CANCEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_REQUEST_TO_CANCEL:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 15
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_CANCELING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CANCELING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 16
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    const-string v1, "EVENT_CANCELED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CANCELED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 6
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    sget-object v1, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_SERVICE_CREATED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CONFIGURING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_SERVICE_READY:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_REQUEST_TO_PREPARE:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_PREPARING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_PREPARED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_COMPLETED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_REQUEST_TO_CANCEL:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CANCELING:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->EVENT_CANCELED:Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->$VALUES:[Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    .line 29
    new-instance v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent$1;

    invoke-direct {v0}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    return-object v0
.end method

.method public static values()[Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->$VALUES:[Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    invoke-virtual {v0}, [Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/SplitWindowStateChangedEvent;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    return-void
.end method
