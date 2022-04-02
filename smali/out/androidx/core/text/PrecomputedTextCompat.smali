.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

.field private final mText:Landroid/text/Spannable;

.field private final mWrapped:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 74
    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    .line 754
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 2

    .line 523
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    return-object v0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .registers 3

    .line 512
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    instance-of v1, v0, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_9

    .line 513
    check-cast v0, Landroid/text/PrecomputedText;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 729
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 734
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 724
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    .line 715
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 717
    :cond_d
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 2

    .line 749
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 739
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4

    .line 695
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_16

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_10

    .line 700
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    goto :goto_15

    .line 702
    :cond_10
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_15
    return-void

    .line 696
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 7

    .line 678
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_16

    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_10

    .line 683
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    .line 685
    :cond_10
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_15
    return-void

    .line 679
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 759
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 765
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
