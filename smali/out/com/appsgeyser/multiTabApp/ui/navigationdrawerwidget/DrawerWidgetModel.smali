.class public Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;
.super Ljava/lang/Object;
.source "DrawerWidgetModel.java"


# instance fields
.field private description:Ljava/lang/String;

.field private final imageDrawable:Landroid/graphics/drawable/Drawable;

.field private isDivider:Z

.field private final menuId:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->menuId:I

    .line 27
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->description:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->menuId:I

    return p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getMenuId()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->menuId:I

    return v0
.end method

.method public isDivider()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->isDivider:Z

    return v0
.end method

.method public select()V
    .registers 3

    .line 56
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 58
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;

    invoke-direct {v1, p0, v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel$1;-><init>(Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setDivider(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/DrawerWidgetModel;->isDivider:Z

    return-void
.end method
