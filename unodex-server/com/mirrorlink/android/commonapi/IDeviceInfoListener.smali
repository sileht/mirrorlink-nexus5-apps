.class public interface abstract Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;
.super Ljava/lang/Object;
.source "IDeviceInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/commonapi/IDeviceInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceInfoChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
