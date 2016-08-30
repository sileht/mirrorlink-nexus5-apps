.class public abstract Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub;
.super Landroid/os/Binder;
.source "ISplitUIServiceChangedListener.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.zdi.splitwindow.ISplitUIServiceChangedListener"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.zdi.splitwindow.ISplitUIServiceChangedListener"

    invoke-virtual {p0, p0, v0}, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.lge.zdi.splitwindow.ISplitUIServiceChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
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
    .line 39
    packed-switch p1, :pswitch_data_10

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 43
    :pswitch_8
    const-string v0, "com.lge.zdi.splitwindow.ISplitUIServiceChangedListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_7

    .line 39
    nop

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_8
    .end packed-switch
.end method
