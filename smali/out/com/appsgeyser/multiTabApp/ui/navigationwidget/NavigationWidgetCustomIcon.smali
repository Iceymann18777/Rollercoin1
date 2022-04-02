.class public Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;
.super Ljava/lang/Object;
.source "NavigationWidgetCustomIcon.java"


# instance fields
.field private _badge:Landroid/widget/TextView;

.field private _iconView:Landroid/view/ViewGroup;

.field private _imageButton:Landroid/widget/ImageButton;


# virtual methods
.method public hideBadge()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showBadge()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateBadge(Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 47
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->showBadge()V

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->_badge:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 50
    :cond_f
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->hideBadge()V

    :goto_12
    return-void
.end method

.method public updateIcon(Ljava/lang/String;)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->_iconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42180000    # 38.0f

    .line 59
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 60
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;->_imageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    return-void
.end method
