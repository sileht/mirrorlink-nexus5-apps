.class public final enum Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;
.super Ljava/lang/Enum;
.source "ScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ScreenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FULL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

.field public static final enum INVISIBLE:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

.field public static final enum MINIMIZED:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

.field public static final enum NORMAL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->INVISIBLE:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 31
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    const-string v1, "MINIMIZED"

    invoke-direct {v0, v1, v3}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->MINIMIZED:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 32
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->NORMAL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 33
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v5}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->FULL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->INVISIBLE:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->MINIMIZED:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->NORMAL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->FULL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->$VALUES:[Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 46
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState$1;

    invoke-direct {v0}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    return-object v0
.end method

.method public static values()[Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->$VALUES:[Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    invoke-virtual {v0}, [Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
