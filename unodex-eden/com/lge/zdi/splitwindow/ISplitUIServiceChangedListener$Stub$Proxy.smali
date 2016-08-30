.class Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplitUIServiceChangedListener.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 55
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, "com.lge.zdi.splitwindow.ISplitUIServiceChangedListener"

    return-object v0
.end method
