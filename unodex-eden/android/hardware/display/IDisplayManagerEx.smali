.class public interface abstract Landroid/hardware/display/IDisplayManagerEx;
.super Ljava/lang/Object;
.source "IDisplayManagerEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManagerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract recoverBacklightBrightness(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGlanceView()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
