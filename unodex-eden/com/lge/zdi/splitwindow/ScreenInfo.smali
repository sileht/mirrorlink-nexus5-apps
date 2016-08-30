.class public Lcom/lge/zdi/splitwindow/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/splitwindow/ScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_ATTRIBUTE_FLOATING:I = 0x2

.field public static final SCREEN_ATTRIBUTE_NOT_RESIZABLE:I = 0x1

.field public static final SCREEN_AUTOSPLIT:I = 0xf

.field public static final SCREEN_STATE_FULL:I = 0x3

.field public static final SCREEN_STATE_INVISIBLE:I = 0x0

.field public static final SCREEN_STATE_MINIMIZED:I = 0x1

.field public static final SCREEN_STATE_NORMAL:I = 0x2

.field public static final SCREEN_ZONE_A:I = 0x1

.field public static final SCREEN_ZONE_B:I = 0x2

.field public static final SCREEN_ZONE_C:I = 0x3

.field public static final SCREEN_ZONE_D:I = 0x4

.field public static final SCREEN_ZONE_E:I = 0x5

.field public static final SCREEN_ZONE_F:I = 0x6

.field public static final SCREEN_ZONE_HOME:I = -0x1

.field public static final SCREEN_ZONE_MAIN:I


# instance fields
.field public screenAttribute:I

.field public screenId:I

.field public screenRect:Landroid/graphics/Rect;

.field public screenRectFull:Landroid/graphics/Rect;

.field public screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

.field public screenZone:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo$1;

    invoke-direct {v0}, Lcom/lge/zdi/splitwindow/ScreenInfo$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Rect;ILcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "screenId"    # I
    .param p2, "screenZone"    # I
    .param p3, "screenRect"    # Landroid/graphics/Rect;
    .param p4, "screenAttribute"    # I
    .param p5, "screenState"    # Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;
    .param p6, "screenRectFull"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    .line 89
    iput p2, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    .line 90
    iput-object p3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    .line 91
    iput p4, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    .line 92
    iput-object p5, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 93
    iput-object p6, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    .line 81
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    .line 83
    sget-object v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 84
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lge/zdi/splitwindow/ScreenInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lge/zdi/splitwindow/ScreenInfo$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/lge/zdi/splitwindow/ScreenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lge/zdi/splitwindow/ScreenInfo;)V
    .registers 4
    .param p1, "other"    # Lcom/lge/zdi/splitwindow/ScreenInfo;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    .line 109
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    .line 111
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    .line 112
    iget-object v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    .line 114
    return-void
.end method


# virtual methods
.method protected clone()Lcom/lge/zdi/splitwindow/ScreenInfo;
    .registers 2

    .prologue
    .line 245
    new-instance v0, Lcom/lge/zdi/splitwindow/ScreenInfo;

    invoke-direct {v0, p0}, Lcom/lge/zdi/splitwindow/ScreenInfo;-><init>(Lcom/lge/zdi/splitwindow/ScreenInfo;)V

    .line 246
    .local v0, "clone":Lcom/lge/zdi/splitwindow/ScreenInfo;
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ScreenInfo;->clone()Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 217
    instance-of v1, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;

    if-eqz v1, :cond_3b

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/lge/zdi/splitwindow/ScreenInfo;

    .line 220
    .local v0, "that":Lcom/lge/zdi/splitwindow/ScreenInfo;
    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    iget v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    iget v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    if-ne v1, v2, :cond_39

    iget-object v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    iget v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    if-ne v1, v2, :cond_39

    iget-object v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    iget-object v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    invoke-virtual {v1, v2}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    .line 227
    .end local v0    # "that":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :goto_38
    return v1

    .line 220
    .restart local v0    # "that":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :cond_39
    const/4 v1, 0x0

    goto :goto_38

    .line 227
    .end local v0    # "that":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :cond_3b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_38
.end method

.method public equalsExceptState(Lcom/lge/zdi/splitwindow/ScreenInfo;)Z
    .registers 5
    .param p1, "that"    # Lcom/lge/zdi/splitwindow/ScreenInfo;

    .prologue
    const/4 v0, 0x0

    .line 191
    if-nez p1, :cond_4

    .line 194
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    iget v2, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    iget v2, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    iget v2, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getScreenAttribute()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    return v0
.end method

.method public getScreenId()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    return v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenState()I
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->INVISIBLE:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    if-ne v0, v1, :cond_8

    .line 134
    const/4 v0, 0x0

    .line 142
    :goto_7
    return v0

    .line 135
    :cond_8
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->MINIMIZED:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    if-ne v0, v1, :cond_10

    .line 136
    const/4 v0, 0x1

    goto :goto_7

    .line 137
    :cond_10
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->NORMAL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    if-ne v0, v1, :cond_18

    .line 138
    const/4 v0, 0x2

    goto :goto_7

    .line 139
    :cond_18
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    sget-object v1, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->FULL:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    if-ne v0, v1, :cond_20

    .line 140
    const/4 v0, 0x3

    goto :goto_7

    .line 142
    :cond_20
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getScreenZone()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", screenZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", screenAttribute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", screenRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", screenRectFull = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/lge/zdi/splitwindow/ScreenInfo;)Z
    .registers 3
    .param p1, "screenInfo"    # Lcom/lge/zdi/splitwindow/ScreenInfo;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/lge/zdi/splitwindow/ScreenInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const/4 v0, 0x0

    .line 212
    :goto_7
    return v0

    .line 205
    :cond_8
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    .line 206
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    .line 207
    iget-object v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    .line 208
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    .line 209
    iget-object v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    .line 210
    iget-object v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    .line 212
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public updateWithoutState(Lcom/lge/zdi/splitwindow/ScreenInfo;)Z
    .registers 4
    .param p1, "screenInfo"    # Lcom/lge/zdi/splitwindow/ScreenInfo;

    .prologue
    .line 171
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    .line 172
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    .line 174
    iget v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    .line 175
    iget-object v0, p1, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 153
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenAttribute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenState:Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;

    invoke-virtual {v0, p1, p2}, Lcom/lge/zdi/splitwindow/ScreenInfo$ScreenState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ScreenInfo;->screenRectFull:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    return-void
.end method
