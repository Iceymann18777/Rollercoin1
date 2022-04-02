.class public Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
.super Landroid/widget/RelativeLayout;
.source "VastVideoCloseButtonWidget.java"


# instance fields
.field private mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;

.field private final mEdgePadding:I

.field private final mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

.field private final mImagePadding:I

.field private mImageView:Landroid/widget/ImageView;

.field private final mTextRightMargin:I

.field private mTextView:Landroid/widget/TextView;

.field private final mWidgetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setId(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 47
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 48
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    const/high16 v0, 0x42600000    # 56.0f

    .line 49
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    const/4 v0, 0x0

    .line 50
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextRightMargin:I

    .line 52
    new-instance v0, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v0}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    .line 53
    invoke-static {p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->createImageView()V

    .line 56
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->createTextView()V

    .line 58
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    const/4 v1, -0x2

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)Landroid/widget/ImageView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private createImageView()V
    .registers 6

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    .line 68
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mWidgetHeight:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mCloseButtonDrawable:Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImagePadding:I

    iget v3, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    add-int v4, v2, v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v4, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 78
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createTextView()V
    .registers 5

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    .line 83
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$CloseButton;->TEXT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mEdgePadding:I

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    iget v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextRightMargin:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 101
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method setImageView(Landroid/widget/ImageView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method updateCloseButtonIcon(Ljava/lang/String;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mImageLoader:Lcom/mopub/volley/toolbox/ImageLoader;

    new-instance v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;-><init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method updateCloseButtonText(Ljava/lang/String;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
