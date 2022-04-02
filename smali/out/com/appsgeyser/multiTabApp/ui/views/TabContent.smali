.class public Lcom/appsgeyser/multiTabApp/ui/views/TabContent;
.super Landroid/widget/RelativeLayout;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;)V
    .registers 2

    return-void
.end method
