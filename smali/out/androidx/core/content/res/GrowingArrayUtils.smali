.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 60
    array-length v1, p0

    if-le v0, v1, :cond_10

    .line 61
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 65
    :cond_10
    aput p2, p0, p1

    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 44
    array-length v1, p0

    if-le v0, v1, :cond_1e

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 46
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 50
    :cond_1e
    aput-object p2, p0, p1

    return-object p0
.end method

.method public static growSize(I)I
    .registers 2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_8

    :cond_6
    mul-int/lit8 p0, p0, 0x2

    :goto_8
    return p0
.end method
