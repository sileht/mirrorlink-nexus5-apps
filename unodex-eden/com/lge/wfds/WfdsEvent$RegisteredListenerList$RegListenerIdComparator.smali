.class Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;
.super Ljava/lang/Object;
.source "WfdsEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegListenerIdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/wfds/WfdsEvent$RegisteredListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;


# direct methods
.method private constructor <init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;)V
    .registers 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;->this$1:Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;)V
    .registers 3

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;-><init>(Lcom/lge/wfds/WfdsEvent$RegisteredListenerList;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/wfds/WfdsEvent$RegisteredListener;Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I
    .registers 5
    .param p1, "regListenerA"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;
    .param p2, "regListenerB"    # Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    .prologue
    .line 363
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    iget v1, p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-le v0, v1, :cond_8

    .line 364
    const/4 v0, 0x1

    .line 368
    :goto_7
    return v0

    .line 365
    :cond_8
    iget v0, p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    iget v1, p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;->listenerId:I

    if-ne v0, v1, :cond_10

    .line 366
    const/4 v0, 0x0

    goto :goto_7

    .line 368
    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    check-cast p2, Lcom/lge/wfds/WfdsEvent$RegisteredListener;

    invoke-virtual {p0, p1, p2}, Lcom/lge/wfds/WfdsEvent$RegisteredListenerList$RegListenerIdComparator;->compare(Lcom/lge/wfds/WfdsEvent$RegisteredListener;Lcom/lge/wfds/WfdsEvent$RegisteredListener;)I

    move-result v0

    return v0
.end method
