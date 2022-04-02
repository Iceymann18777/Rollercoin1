.class public Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;
.super Ljava/lang/Object;
.source "BottomMenuController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/INavigationController;


# instance fields
.field private activity:Landroid/app/Activity;

.field private bottomMenuListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

.field private bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private bottomSheet:Landroid/widget/LinearLayout;

.field private final bottomSheetClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

.field private bottomSheetMenuList:Landroidx/recyclerview/widget/RecyclerView;

.field private firstBannerWasShown:Z

.field private final onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

.field private selectedMenuItem:I

.field private selectedPosition:I

.field private tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

.field private viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomMenuListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 296
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 330
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController$3;-><init>(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheetClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedMenuItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedMenuItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroid/widget/LinearLayout;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheet:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheetMenuList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 362
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 363
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_9

    if-le p0, p1, :cond_18

    .line 368
    :cond_9
    div-int/lit8 v0, v0, 0x2

    .line 369
    div-int/lit8 p0, p0, 0x2

    .line 373
    :goto_d
    div-int v2, v0, v1

    if-lt v2, p2, :cond_18

    div-int v2, p0, v1

    if-lt v2, p1, :cond_18

    mul-int/lit8 v1, v1, 0x2

    goto :goto_d

    :cond_18
    return v1
.end method

.method public static getDrawableIconFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    .line 340
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 341
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x32

    .line 342
    invoke-static {v2, v3, v3}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 343
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v1, :cond_2b

    .line 349
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    :cond_2b
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_35

    return-object v2

    :catch_35
    move-exception p0

    const-string v1, "Error getting icon "

    .line 353
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private inflateMenu(Ljava/util/Vector;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 93
    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->isShowAsTab()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 94
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 96
    :cond_2a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 100
    :cond_2e
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const-string v4, "tabIcons/"

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne v3, v6, :cond_84

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_84

    .line 101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 102
    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v9

    .line 103
    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v10, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v9, :cond_43

    .line 106
    iget-object v10, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getDrawableIconFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_43

    .line 108
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_43

    :cond_84
    const/4 v3, 0x0

    .line 113
    :goto_85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gt v3, v8, :cond_f2

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v3, v8, :cond_af

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_f2

    const v3, 0x7f120065

    .line 116
    invoke-interface {v0, v7, v5, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_f2

    .line 124
    :cond_af
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 125
    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v9

    .line 126
    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v10, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    const-string v10, ""

    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ef

    .line 129
    iget-object v10, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getDrawableIconFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_ef

    .line 131
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_ef
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 137
    :cond_f2
    :goto_f2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_12e

    .line 138
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-le p1, v6, :cond_110

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v6, :cond_110

    .line 139
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    :cond_110
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheetClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;

    invoke-direct {p1, v1, v0}, Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter;-><init>(Ljava/util/List;Lcom/appsgeyser/multiTabApp/ui/adapters/BottomSheetMenuAdapter$OnItemClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheetMenuList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_12e

    .line 145
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12e
    return-void
.end method


# virtual methods
.method public findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    .line 206
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, ""

    .line 209
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 210
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz v2, :cond_e

    .line 212
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getHostFromLink()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getPathFromLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_e

    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v4, :cond_41

    .line 215
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 216
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 218
    :cond_41
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_46
    return-object v1
.end method

.method public firstBannerWasShown()V
    .registers 2

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->firstBannerWasShown:Z

    return-void
.end method

.method public getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
    .registers 4

    const/4 v0, 0x0

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    iget v2, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedPosition:I

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;->getFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_18

    if-eqz v1, :cond_18

    .line 185
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    if-nez v2, :cond_10

    goto :goto_18

    .line 188
    :cond_10
    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabFragment;->getContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    :catch_18
    :cond_18
    :goto_18
    return-object v0
.end method

.method public getSelectedTabId()I
    .registers 2

    .line 269
    iget v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedPosition:I

    return v0
.end method

.method public initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 5

    .line 60
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    const v1, 0x7f0a01ef

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    const/16 v1, 0xa

    .line 62
    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setOffscreenPageLimit(I)V

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheet:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomSheetMenuList:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->sortCollectionByShowingTabs()V

    .line 73
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetCollection()Ljava/util/Vector;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->inflateMenu(Ljava/util/Vector;)V

    .line 75
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomMenuListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 76
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 78
    new-instance p1, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;-><init>(Z)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->tabsAdapter:Lcom/appsgeyser/multiTabApp/controllers/TabsAdapter;

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 80
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedPosition:I

    .line 82
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    if-eqz p1, :cond_89

    const/4 v0, 0x1

    .line 83
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    :cond_89
    return-void
.end method

.method public isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 228
    invoke-interface {p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;->tabsControllerReady(Z)V

    goto :goto_b

    .line 230
    :cond_9
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->onTabsControllerReadyListener:Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;

    :goto_b
    return-void
.end method

.method public onBackKeyDown()Z
    .registers 5

    .line 153
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 155
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 157
    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public onPause()V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 237
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 238
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 244
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 245
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 246
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_13
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setPagingEnabled(Z)V

    return-void
.end method

.method public swipeOnPage(IZ)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->viewPager:Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->setCurrentItem(IZ)V

    .line 194
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget p2, p0, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->selectedMenuItem:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public swipeOnPageByTabId(Ljava/lang/String;)V
    .registers 3

    .line 199
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetPositionByTabId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;->swipeOnPage(IZ)V

    return-void
.end method
