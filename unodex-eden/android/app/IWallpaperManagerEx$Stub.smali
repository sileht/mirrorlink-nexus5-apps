.class public Landroid/app/IWallpaperManagerEx$Stub;
.super Ljava/lang/Object;
.source "IWallpaperManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_getWallpaperType:I = 0x2711

.field static final TRANSACTION_setWallpaperType:I = 0x2710


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/app/IWallpaperManager;)Landroid/app/IWallpaperManagerEx;
    .registers 2
    .param p0, "obj"    # Landroid/app/IWallpaperManager;

    .prologue
    .line 27
    new-instance v0, Landroid/app/IWallpaperManagerEx$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IWallpaperManagerEx$Stub$Proxy;-><init>(Landroid/app/IWallpaperManager;)V

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerEx;
    .registers 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 19
    if-nez p0, :cond_4

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerEx$Stub;->asInterface(Landroid/app/IWallpaperManager;)Landroid/app/IWallpaperManagerEx;

    move-result-object v0

    goto :goto_3
.end method

.method public static onTransasct(Landroid/app/IWallpaperManagerEx;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p0, "server"    # Landroid/app/IWallpaperManagerEx;
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 31
    packed-switch p1, :pswitch_data_2e

    move v2, v0

    .line 46
    :goto_6
    return v2

    .line 33
    :pswitch_7
    const-string v3, "android.app.IWallpaperManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    move v0, v2

    .line 36
    .local v0, "_arg0":Z
    :cond_13
    invoke-interface {p0, v0}, Landroid/app/IWallpaperManagerEx;->setWallpaperType(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6

    .line 40
    .end local v0    # "_arg0":Z
    :pswitch_1a
    const-string v3, "android.app.IWallpaperManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Landroid/app/IWallpaperManagerEx;->getWallpaperType()Z

    move-result v1

    .line 42
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    if-eqz v1, :cond_29

    move v0, v2

    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 31
    nop

    :pswitch_data_2e
    .packed-switch 0x2710
        :pswitch_7
        :pswitch_1a
    .end packed-switch
.end method
