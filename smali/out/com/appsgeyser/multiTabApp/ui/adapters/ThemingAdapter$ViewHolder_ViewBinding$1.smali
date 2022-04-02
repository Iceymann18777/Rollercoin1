.class Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ThemingAdapter$ViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;-><init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;->this$0:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;->val$target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 36
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder_ViewBinding$1;->val$target:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->themeSelected()V

    return-void
.end method
