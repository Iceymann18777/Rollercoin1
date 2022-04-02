.class public Lcom/startapp/android/publish/ads/a/d;
.super Lcom/startapp/android/publish/ads/a/c;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/a/d$a;,
        Lcom/startapp/android/publish/ads/a/d$b;
    }
.end annotation


# instance fields
.field private i:Lcom/startapp/android/publish/adsCommon/g/a/d;

.field private j:Landroid/util/DisplayMetrics;

.field private k:Lcom/startapp/android/publish/ads/a/d$b;

.field private l:Lcom/startapp/android/publish/adsCommon/g/b/b;

.field private m:Lcom/startapp/android/publish/adsCommon/g/c/a;

.field private n:Landroid/widget/ImageButton;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/c;-><init>()V

    .line 42
    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->a:Lcom/startapp/android/publish/adsCommon/g/a/d;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/d;->o:Z

    .line 51
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/d;->p:Z

    return-void
.end method

.method private G()V
    .registers 18

    move-object/from16 v1, p0

    .line 153
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, v1, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    invoke-static {v0, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/content/Context;IILandroid/webkit/WebView;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, v1, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    invoke-static {v0, v2, v3, v4}, Lcom/startapp/android/publish/adsCommon/g/a/c;->b(Landroid/content/Context;IILandroid/webkit/WebView;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v10, v1, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    invoke-static/range {v5 .. v10}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Landroid/content/Context;IIIILandroid/webkit/WebView;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v1, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, v1, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/startapp/android/publish/adsCommon/g/a/c;->b(Landroid/content/Context;IIIILandroid/webkit/WebView;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_70

    :catch_5e
    move-exception v0

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MraidMode.updateDisplayMetrics"

    const-string v5, ""

    invoke-static {v2, v3, v4, v0, v5}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    return-void
.end method

.method private H()V
    .registers 6

    .line 169
    :try_start_0
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 171
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/startapp/android/publish/ads/a/d$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/d$3;-><init>(Lcom/startapp/android/publish/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/a/d;->o:Z

    if-nez v0, :cond_20

    .line 179
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->I()V

    .line 182
    :cond_20
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    .line 183
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 184
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    .line 185
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_53

    :catch_41
    move-exception v0

    .line 189
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MraidMode.addCloseRegion"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method private I()V
    .registers 6

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    if-eqz v0, :cond_31

    .line 249
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA39pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDozODRkZTAxYi00OWRkLWM4NDYtYThkNC0wZWRiMDMwYTZlODAiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QkE0Q0U2MUY2QzA0MTFFNUE3MkJGQjQ1MTkzOEYxQUUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QkE0Q0U2MUU2QzA0MTFFNUE3MkJGQjQ1MTkzOEYxQUUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjlkZjAyMGU0LTNlYmUtZTY0ZC04YjRiLWM5ZWY4MTU4ZjFhYyIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmU1MzEzNDdlLTZjMDEtMTFlNS1hZGZlLThmMTBjZWYxMGRiZSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PngNsEEAAANeSURBVHjatFfNS1tBEH+pUZOQ0B4i3sTSxHMRFNQoFBEP7dHgvyDiKWgguQra9F+oxqNiwOTQ+oFI1ZM3jSf1YK5FL41ooaKZzu+x+4gv2bx9Rgd+JNn5zO7s7IzH0CQiCvLHZ8YnxkfGe8ZbwS4zSowTxi/GT4/Hc2u8BLHjCOM745b06VboRJpx7GN8ZfyDxUqlQgcHB5RMJmloaIg6Ozupra3NBL5jDTzIQFYQdDOw5db5B8YxLDw+PtLKygr19PQQWDqIRqOUzWZNXUHH2rvBgr2M39C6uLig/v5+bcd2QLdUKskgYLNX57yvIL2zs0OhUOjZziU6Ojro8PBQBnGl3Alm+BknkMI54mybdS4BW3t7ezKIInzVCwDJYm4Zon4p5xLYzfPzcxlEpl7S3SNpmjlznZwQiXn/5CjEnTUzt5GBsbExamlpUfLBg0wjG8vLy3IXlqTzEAoH7m4kElEqTk1Nmfd7bW2tbhBYAw8ykFXZgQ9RJ1CsQghgEr/29/eVStPT09XFhdbX18nr9Vr81tZWyuVyFh+yMzMzSnvwJWjyDS+MYic2NzeV17O7u9vg2m79jsfjBv9bg7PbxOrqqjExMWHxIdvV1aW0V+VrFDtwhFCGh4cbnl0mk6kp+BsbGybsBNlGtkZGRqToEQK4xjfUc6csXlhYcHyFFhcXHe3Al6BrQz427e3tWldpfn5e6Rw83cIkHyvXAUAZb4SdsKZbPe0BaB+Bz+cjTiDlDmxtbZkybo9AKwn9fj9tb2875gBkINvIFnzJJMQ1PMV9GBgYUF6bQCBgFAoFY3x8/Ml6KpUy0un0kzXIQBY6KqrydapViPL5fM0/Rfcj+fhuJw5CqxBpleJYLEY3NzeW8dnZ2RoZrEmCLHQcSvGdWYrFe7CEFTwUqqjR85XLZUokEkoZ8CADWe3HqKoTcnyOdW5KI5m+vj56eHiQz3G0bkNyeXn5ag3J2dmZ/PffVC1Z8bVast3d3eqWLKDVlAaDwaadh8Nhvaa0XluOHg7n9lzn0MWRarfltp0oysEErRqGDTeDCbK9ajApuh7TxGiWERlrjWZzc3M0ODhYM5phDTzbaHb/rNHMFkhUNK13LobTv6K2RJ3se1yO519s4/k7wf5jG89/6I7n/wUYAGo3YtcprD4sAAAAAElFTkSuQmCC"

    invoke-static {v0, v1}, Lcom/startapp/common/a/d;->a(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_31

    :catch_1f
    move-exception v0

    .line 254
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MraidMode.showDefaultCloseButton"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method private J()V
    .registers 6

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    .line 261
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->n:Landroid/widget/ImageButton;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1f

    :catch_d
    move-exception v0

    .line 264
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MraidMode.removeDefaultCloseButton"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/ads/a/d$b;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    return-object p0
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/a/d;Lcom/startapp/android/publish/adsCommon/g/a/d;)Lcom/startapp/android/publish/adsCommon/g/a/d;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/a/d;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/a/d;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/a/d;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    return-object p0
.end method

.method static synthetic c(Lcom/startapp/android/publish/ads/a/d;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/a/d;->o:Z

    return p0
.end method

.method static synthetic d(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->J()V

    return-void
.end method

.method static synthetic e(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->I()V

    return-void
.end method

.method static synthetic f(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/c/a;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/startapp/android/publish/ads/a/d;->m:Lcom/startapp/android/publish/adsCommon/g/c/a;

    return-object p0
.end method

.method static synthetic g(Lcom/startapp/android/publish/ads/a/d;)Lcom/startapp/android/publish/adsCommon/g/b/b;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/startapp/android/publish/ads/a/d;->l:Lcom/startapp/android/publish/adsCommon/g/b/b;

    return-object p0
.end method

.method static synthetic h(Lcom/startapp/android/publish/ads/a/d;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/a/d;->p:Z

    return p0
.end method

.method static synthetic i(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->G()V

    return-void
.end method

.method static synthetic j(Lcom/startapp/android/publish/ads/a/d;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->H()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/d;->G()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    .line 55
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/c;->a(Landroid/os/Bundle;)V

    .line 56
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    if-nez p1, :cond_e

    .line 57
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->j:Landroid/util/DisplayMetrics;

    .line 60
    :cond_e
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->l:Lcom/startapp/android/publish/adsCommon/g/b/b;

    if-nez p1, :cond_1d

    .line 64
    new-instance p1, Lcom/startapp/android/publish/adsCommon/g/b/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/startapp/android/publish/adsCommon/g/b/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->l:Lcom/startapp/android/publish/adsCommon/g/b/b;

    .line 67
    :cond_1d
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->m:Lcom/startapp/android/publish/adsCommon/g/c/a;

    if-nez p1, :cond_28

    .line 68
    new-instance p1, Lcom/startapp/android/publish/adsCommon/g/c/a;

    invoke-direct {p1}, Lcom/startapp/android/publish/adsCommon/g/c/a;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->m:Lcom/startapp/android/publish/adsCommon/g/c/a;

    .line 71
    :cond_28
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    if-nez p1, :cond_38

    .line 72
    new-instance p1, Lcom/startapp/android/publish/ads/a/d$b;

    new-instance v0, Lcom/startapp/android/publish/ads/a/d$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/a/d$1;-><init>(Lcom/startapp/android/publish/ads/a/d;)V

    invoke-direct {p1, p0, v0}, Lcom/startapp/android/publish/ads/a/d$b;-><init>(Lcom/startapp/android/publish/ads/a/d;Lcom/startapp/android/publish/adsCommon/g/a/a$a;)V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    :cond_38
    return-void
.end method

.method protected a(Ljava/lang/String;Z)Z
    .registers 7

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adClicked with url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidMode"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    sget-object v0, Lcom/startapp/android/publish/adsCommon/g/a/d;->e:Lcom/startapp/android/publish/adsCommon/g/a/d;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    .line 141
    iget-object v1, p0, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/g/a/c;->a(Lcom/startapp/android/publish/adsCommon/g/a/d;Landroid/webkit/WebView;)V

    .line 144
    :try_start_20
    invoke-super {p0, p1, p2}, Lcom/startapp/android/publish/ads/a/c;->a(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    return p1

    :catch_25
    move-exception p2

    .line 146
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MraidMode.adClicked"

    const-string v2, ""

    invoke-static {v0, v1, p2, p1, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public s()V
    .registers 3

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/d;->p:Z

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/g/a/d;->b:Lcom/startapp/android/publish/adsCommon/g/a/d;

    if-ne v0, v1, :cond_e

    .line 101
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/d$b;->fireViewableChangeEvent()V

    .line 104
    :cond_e
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->s()V

    return-void
.end method

.method public u()V
    .registers 3

    .line 83
    invoke-super {p0}, Lcom/startapp/android/publish/ads/a/c;->u()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/a/d;->p:Z

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->i:Lcom/startapp/android/publish/adsCommon/g/a/d;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/g/a/d;->b:Lcom/startapp/android/publish/adsCommon/g/a/d;

    if-ne v0, v1, :cond_11

    .line 87
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/a/d$b;->fireViewableChangeEvent()V

    :cond_11
    return-void
.end method

.method protected x()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/ads/a/d$a;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/a/d;->k:Lcom/startapp/android/publish/ads/a/d$b;

    invoke-direct {v1, p0, v2}, Lcom/startapp/android/publish/ads/a/d$a;-><init>(Lcom/startapp/android/publish/ads/a/d;Lcom/startapp/android/publish/adsCommon/g/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/d;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/ads/a/d$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/a/d$2;-><init>(Lcom/startapp/android/publish/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
