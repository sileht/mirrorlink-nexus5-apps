.class final Lcom/lge/mirrorlink/certificate/AppIdGenerator$1;
.super Ljava/lang/Object;
.source "AppIdGenerator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/certificate/AppIdGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p1, Ljava/util/jar/JarEntry;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/util/jar/JarEntry;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lge/mirrorlink/certificate/AppIdGenerator$1;->compare(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/jar/JarEntry;Ljava/util/jar/JarEntry;)I
    .registers 5
    .param p1, "lhs"    # Ljava/util/jar/JarEntry;
    .param p2, "rhs"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
