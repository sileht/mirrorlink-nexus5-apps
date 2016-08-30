.class public final enum Lcom/lge/zdi/splitwindow/ScreenChangedEvent;
.super Ljava/lang/Enum;
.source "ScreenChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/zdi/splitwindow/ScreenChangedEvent;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/splitwindow/ScreenChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EVENT_FULL_TO_SPLIT_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final enum EVENT_ORIENTATION_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final enum EVENT_SCREEN_SWITCHED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final enum EVENT_SIZE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final enum EVENT_SPLIT_TO_FULL_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

.field public static final enum EVENT_STATE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;


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
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_SIZE_CHANGED"

    invoke-direct {v0, v1, v3}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SIZE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 8
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_STATE_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_STATE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 9
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_ORIENTATION_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_ORIENTATION_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 10
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_SCREEN_SWITCHED"

    invoke-direct {v0, v1, v6}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SCREEN_SWITCHED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 11
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_SPLIT_TO_FULL_VIEW"

    invoke-direct {v0, v1, v7}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SPLIT_TO_FULL_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 12
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    const-string v1, "EVENT_FULL_TO_SPLIT_VIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_FULL_TO_SPLIT_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SIZE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_STATE_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_ORIENTATION_CHANGED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SCREEN_SWITCHED:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_SPLIT_TO_FULL_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->EVENT_FULL_TO_SPLIT_VIEW:Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->$VALUES:[Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    .line 25
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent$1;

    invoke-direct {v0}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lge/zdi/splitwindow/ScreenChangedEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    return-object v0
.end method

.method public static values()[Lcom/lge/zdi/splitwindow/ScreenChangedEvent;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->$VALUES:[Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    invoke-virtual {v0}, [Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/zdi/splitwindow/ScreenChangedEvent;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ScreenChangedEvent;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    return-void
.end method
