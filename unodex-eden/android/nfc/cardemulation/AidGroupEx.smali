.class public Landroid/nfc/cardemulation/AidGroupEx;
.super Ljava/lang/Object;
.source "AidGroupEx.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AidGroupEx"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Landroid/nfc/cardemulation/AidGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 12
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public static newAidGroup(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/nfc/cardemulation/AidGroup;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p1, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, "ret":Landroid/nfc/cardemulation/AidGroup;
    iget-object v1, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    return-object v0
.end method
