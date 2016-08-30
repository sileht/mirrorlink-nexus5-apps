.class public abstract Lcom/lge/dockservice/IDockWindowService$Stub;
.super Landroid/os/Binder;
.source "IDockWindowService.java"

# interfaces
.implements Lcom/lge/dockservice/IDockWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/IDockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/IDockWindowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.dockservice.IDockWindowService"

.field static final TRANSACTION_getDockPosition:I = 0x7

.field static final TRANSACTION_handleDockTouchEvent:I = 0x2

.field static final TRANSACTION_initDockWindow:I = 0x1

.field static final TRANSACTION_killdockIfExists:I = 0x6

.field static final TRANSACTION_undock:I = 0x3

.field static final TRANSACTION_undockAtCenter:I = 0x4

.field static final TRANSACTION_updateIconImage:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/dockservice/IDockWindowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IDockWindowService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.lge.dockservice.IDockWindowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/dockservice/IDockWindowService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/dockservice/IDockWindowService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/dockservice/IDockWindowService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/dockservice/IDockWindowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ea

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_8
    return v8

    .line 42
    :sswitch_9
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    .line 54
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 60
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    move v6, v8

    .local v6, "_arg5":Z
    :goto_39
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v6}, Lcom/lge/dockservice/IDockWindowService$Stub;->initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZ)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 57
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :cond_41
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_2a

    .line 64
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    :cond_43
    const/4 v6, 0x0

    goto :goto_39

    .line 71
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_45
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 77
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    .line 78
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 84
    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    :goto_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    .line 85
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    .line 90
    .local v4, "_arg3":Landroid/view/MotionEvent;
    :goto_6e
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lge/dockservice/IDockWindowService$Stub;->handleDockTouchEvent(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/view/MotionEvent;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 81
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/view/MotionEvent;
    :cond_75
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_60

    .line 88
    :cond_77
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/view/MotionEvent;
    goto :goto_6e

    .line 96
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/view/MotionEvent;
    :sswitch_79
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/dockservice/IDockWindowService$Stub;->undock(Ljava/lang/String;II)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_92
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/dockservice/IDockWindowService$Stub;->undockAtCenter(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a3
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c2

    .line 123
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 128
    .local v2, "_arg1":Landroid/graphics/Bitmap;
    :goto_ba
    invoke-virtual {p0, v1, v2}, Lcom/lge/dockservice/IDockWindowService$Stub;->updateIconImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 126
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :cond_c2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_ba

    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_c4
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/dockservice/IDockWindowService$Stub;->killdockIfExists(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d5
    const-string v0, "com.lge.dockservice.IDockWindowService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/dockservice/IDockWindowService$Stub;->getDockPosition(Ljava/lang/String;)[I

    move-result-object v7

    .line 147
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    .line 38
    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_45
        0x3 -> :sswitch_79
        0x4 -> :sswitch_92
        0x5 -> :sswitch_a3
        0x6 -> :sswitch_c4
        0x7 -> :sswitch_d5
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
