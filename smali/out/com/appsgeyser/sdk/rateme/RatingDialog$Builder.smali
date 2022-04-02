.class public Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
.super Ljava/lang/Object;
.source "RatingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/rateme/RatingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;,
        Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;,
        Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;,
        Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;
    }
.end annotation


# instance fields
.field private cancelText:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private feedBackTextColor:I

.field private feedbackFormHint:Ljava/lang/String;

.field private formTitle:Ljava/lang/String;

.field private negativeBackgroundColor:I

.field private negativeText:Ljava/lang/String;

.field private negativeTextColor:I

.field private playstoreUrl:Ljava/lang/String;

.field private positiveBackgroundColor:I

.field private positiveText:Ljava/lang/String;

.field private positiveTextColor:I

.field private ratingBarBackgroundColor:I

.field private ratingBarColor:I

.field private ratingDialogFormListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;

.field private ratingDialogListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

.field private ratingThresholdClearedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

.field private ratingThresholdFailedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

.field private session:I

.field private submitText:Ljava/lang/String;

.field private threshold:F

.field private title:Ljava/lang/String;

.field private titleTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 367
    iput v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->session:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 368
    iput v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->threshold:F

    .line 388
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->playstoreUrl:Ljava/lang/String;

    .line 391
    invoke-direct {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->initText()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->session:I

    return p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)F
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->threshold:F

    return p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->positiveTextColor:I

    return p0
.end method

.method static synthetic access$1100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->negativeTextColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->feedBackTextColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->positiveBackgroundColor:I

    return p0
.end method

.method static synthetic access$1400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->negativeBackgroundColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingBarColor:I

    return p0
.end method

.method static synthetic access$1600(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingBarBackgroundColor:I

    return p0
.end method

.method static synthetic access$1700(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingDialogFormListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdClearedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdClearedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdFailedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdFailedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingDialogListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->playstoreUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->positiveText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->negativeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->formTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->submitText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)Ljava/lang/String;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->feedbackFormHint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)I
    .registers 1

    .line 354
    iget p0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->titleTextColor:I

    return p0
.end method

.method private initText()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_experience:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->title:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_maybe_later:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->positiveText:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_never:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->negativeText:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_feedback_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->formTitle:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_submit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->submitText:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->cancelText:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    sget v1, Lcom/appsgeyser/sdk/R$string;->rating_dialog_suggestions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->feedbackFormHint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/appsgeyser/sdk/rateme/RatingDialog;
    .registers 3

    .line 525
    new-instance v0, Lcom/appsgeyser/sdk/rateme/RatingDialog;

    iget-object v1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;)V

    return-object v0
.end method

.method public dialogListener(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingDialogListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;

    return-object p0
.end method

.method public onRatingBarFormSumbit(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingDialogFormListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;

    return-object p0
.end method

.method public onThresholdCleared(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdClearedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;

    return-object p0
.end method

.method public onThresholdFailed(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->ratingThresholdFailedListener:Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;

    return-object p0
.end method

.method public session(I)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 405
    iput p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->session:I

    return-object p0
.end method

.method public threshold(F)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;
    .registers 2

    .line 410
    iput p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->threshold:F

    return-object p0
.end method
