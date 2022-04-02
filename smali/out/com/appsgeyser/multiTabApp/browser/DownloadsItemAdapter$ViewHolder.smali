.class Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field date:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter$ViewHolder;-><init>()V

    return-void
.end method
