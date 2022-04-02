.class public Lcom/startapp/android/publish/adsCommon/adinformation/d;
.super Landroid/widget/RelativeLayout;
.source "StartAppSDK"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

.field private e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

.field private f:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

.field private g:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/adsCommon/adinformation/c;Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->c:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->f:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 33
    new-instance p1, Lcom/startapp/android/publish/adsCommon/adinformation/d$1;

    invoke-direct {p1, p0, p5}, Lcom/startapp/android/publish/adsCommon/adinformation/d$1;-><init>(Lcom/startapp/android/publish/adsCommon/adinformation/d;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->c:Landroid/view/View$OnClickListener;

    .line 41
    invoke-virtual {p0, p2, p4}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a(Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/adsCommon/adinformation/c;)V
    .registers 7

    .line 45
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    if-nez v0, :cond_12

    .line 47
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    .line 49
    :cond_12
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/adinformation/b$b;->a()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig$ImageResourceType;)Lcom/startapp/android/publish/adsCommon/adinformation/e;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    if-eqz p2, :cond_2d

    .line 51
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->d()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 52
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->c()Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->g:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    goto :goto_37

    .line 54
    :cond_2d
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->f:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->g:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    .line 57
    :goto_37
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a:Landroid/widget/ImageView;

    const-string p2, "info"

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a:Landroid/widget/ImageView;

    const p2, 0x57f00001

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 61
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->b:Landroid/widget/RelativeLayout;

    .line 65
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->e()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {p2, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result p2

    .line 67
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->d:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationConfig;->e()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->b:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 72
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->e:Lcom/startapp/android/publish/adsCommon/adinformation/e;

    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/adinformation/e;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->g:Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/adinformation/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
