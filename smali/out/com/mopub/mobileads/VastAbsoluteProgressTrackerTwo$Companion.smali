.class public final Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;
.super Ljava/lang/Object;
.source "VastAbsoluteProgressTrackerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastAbsoluteProgressTrackerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastAbsoluteProgressTrackerTwo.kt\ncom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion\n*L\n1#1,60:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAbsoluteTracker(Ljava/lang/String;)Z
    .registers 5

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_21

    .line 35
    invoke-static {}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->access$getAbsolutePattern$cp()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public final parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    .line 43
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, ":"

    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    move-object p1, v0

    :goto_26
    if-eqz p1, :cond_4f

    .line 44
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4f
    return-object v0
.end method
