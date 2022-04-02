.class Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 119
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method
