.class Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;
.super Lkotlin/collections/CollectionsKt__IteratorsKt;
.source "MutableCollectionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutableCollectionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableCollectionsJVM.kt\nkotlin/collections/CollectionsKt__MutableCollectionsJVMKt\n*L\n1#1,87:1\n*E\n"
.end annotation


# direct methods
.method public static final sort(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$sort"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_f
    return-void
.end method
