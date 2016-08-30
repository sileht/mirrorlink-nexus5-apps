.class public interface abstract Landroid/hardware/input/IInputManagerEx;
.super Ljava/lang/Object;
.source "IInputManagerEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManagerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract injectInputEventWithId(Landroid/view/InputEvent;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
