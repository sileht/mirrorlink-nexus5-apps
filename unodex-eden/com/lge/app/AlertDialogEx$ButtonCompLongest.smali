.class Lcom/lge/app/AlertDialogEx$ButtonCompLongest;
.super Ljava/lang/Object;
.source "AlertDialogEx.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/AlertDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonCompLongest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/app/AlertDialogEx$ButtonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/AlertDialogEx;


# direct methods
.method private constructor <init>(Lcom/lge/app/AlertDialogEx;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lge/app/AlertDialogEx$ButtonCompLongest;->this$0:Lcom/lge/app/AlertDialogEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/AlertDialogEx;Lcom/lge/app/AlertDialogEx$ButtonCompLongest;)V
    .registers 3

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/lge/app/AlertDialogEx$ButtonCompLongest;-><init>(Lcom/lge/app/AlertDialogEx;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/app/AlertDialogEx$ButtonInfo;Lcom/lge/app/AlertDialogEx$ButtonInfo;)I
    .registers 7
    .param p1, "o1"    # Lcom/lge/app/AlertDialogEx$ButtonInfo;
    .param p2, "o2"    # Lcom/lge/app/AlertDialogEx$ButtonInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 211
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {p1}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v2

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {p2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    if-le v2, v3, :cond_d

    .line 220
    :cond_c
    :goto_c
    return v0

    .line 214
    :cond_d
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {p1}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v2

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->longestLineWidth:I
    invoke-static {p2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$0(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 215
    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I
    invoke-static {p1}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$1(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v2

    # getter for: Lcom/lge/app/AlertDialogEx$ButtonInfo;->oHarfWidth:I
    invoke-static {p2}, Lcom/lge/app/AlertDialogEx$ButtonInfo;->access$1(Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v3

    if-gt v2, v3, :cond_c

    move v0, v1

    .line 218
    goto :goto_c

    :cond_23
    move v0, v1

    .line 220
    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    check-cast p2, Lcom/lge/app/AlertDialogEx$ButtonInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/app/AlertDialogEx$ButtonCompLongest;->compare(Lcom/lge/app/AlertDialogEx$ButtonInfo;Lcom/lge/app/AlertDialogEx$ButtonInfo;)I

    move-result v0

    return v0
.end method
