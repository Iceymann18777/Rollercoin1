.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n1#1,82:1\n57#1,23:83\n57#1,23:106\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n19#1,23:83\n31#1,23:106\n*E\n"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 21
    :goto_b
    sget-object p0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_61

    .line 85
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_b

    .line 22
    :cond_19
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1c
    add-int/lit8 v2, v1, 0x1

    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 92
    array-length v1, v0

    if-lt v2, v1, :cond_52

    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2f

    move-object p0, v0

    goto :goto_61

    :cond_2f
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    const v3, 0x7ffffffd

    if-gt v1, v2, :cond_48

    if-ge v2, v3, :cond_40

    const v1, 0x7ffffffd

    goto :goto_48

    .line 99
    :cond_40
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 102
    :cond_48
    :goto_48
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Arrays.copyOf(result, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_62

    .line 104
    :cond_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_62

    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Arrays.copyOf(result, size)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_61
    return-object p0

    :cond_62
    :goto_62
    move v1, v2

    goto :goto_1c
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_91

    .line 106
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 34
    array-length p0, p1

    if-lez p0, :cond_86

    aput-object v1, p1, v2

    goto/16 :goto_86

    .line 108
    :cond_16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_26

    .line 34
    array-length p0, p1

    if-lez p0, :cond_86

    aput-object v1, p1, v2

    goto :goto_86

    .line 39
    :cond_26
    array-length v3, p1

    if-gt v0, v3, :cond_2b

    move-object v0, p1

    goto :goto_3b

    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_89

    check-cast v0, [Ljava/lang/Object;

    :goto_3b
    add-int/lit8 v3, v2, 0x1

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 115
    array-length v2, v0

    if-lt v3, v2, :cond_71

    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4e

    move-object p1, v0

    goto :goto_86

    :cond_4e
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    const v4, 0x7ffffffd

    if-gt v2, v3, :cond_67

    if-ge v3, v4, :cond_5f

    const v2, 0x7ffffffd

    goto :goto_67

    .line 122
    :cond_5f
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 125
    :cond_67
    :goto_67
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Arrays.copyOf(result, newSize)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_87

    .line 127
    :cond_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_87

    if-ne v0, p1, :cond_7c

    .line 43
    aput-object v1, p1, v3

    goto :goto_86

    .line 46
    :cond_7c
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Arrays.copyOf(result, size)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p0

    :cond_86
    :goto_86
    return-object p1

    :cond_87
    :goto_87
    move v2, v3

    goto :goto_3b

    .line 39
    :cond_89
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_91
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    goto :goto_9a

    :goto_99
    throw p0

    :goto_9a
    goto :goto_99
.end method
