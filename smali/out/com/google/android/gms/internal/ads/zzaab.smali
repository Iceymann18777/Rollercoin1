.class public final Lcom/google/android/gms/internal/ads/zzaab;
.super Lcom/google/android/gms/internal/ads/zzaal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzbvy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

.field private final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzbvp:Landroid/app/Activity;

.field private zzbvz:Ljava/lang/String;

.field private zzbwa:Z

.field private zzbwb:I

.field private zzbwc:I

.field private zzbwd:I

.field private zzbwe:I

.field private zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

.field private zzbwg:Landroid/widget/ImageView;

.field private zzbwh:Landroid/widget/LinearLayout;

.field private zzbwi:Landroid/widget/PopupWindow;

.field private zzbwj:Landroid/widget/RelativeLayout;

.field private zzbwk:Landroid/view/ViewGroup;

.field private zzuq:I

.field private zzur:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvy:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaam;)V
    .registers 5

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    return-void
.end method

.method private final zza(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzb(IIII)V

    return-void
.end method

.method private final zzne()[I
    .registers 13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v6, 0x2

    const/16 v7, 0x32

    if-lt v5, v7, :cond_fa

    if-le v5, v3, :cond_25

    goto/16 :goto_fa

    :cond_25
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-lt v8, v7, :cond_f7

    if-le v8, v0, :cond_2d

    goto/16 :goto_f7

    :cond_2d
    if-ne v8, v0, :cond_35

    if-ne v5, v3, :cond_35

    const-string v0, "Cannot resize to a full-screen ad."

    goto/16 :goto_fc

    :cond_35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    sparse-switch v8, :sswitch_data_160

    goto :goto_82

    :sswitch_47
    const-string v8, "top-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x1

    goto :goto_82

    :sswitch_51
    const-string v8, "bottom-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x4

    goto :goto_82

    :sswitch_5b
    const-string v8, "bottom-right"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x5

    goto :goto_82

    :sswitch_65
    const-string v8, "bottom-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x3

    goto :goto_82

    :sswitch_6f
    const-string v8, "top-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x0

    goto :goto_82

    :sswitch_79
    const-string v8, "center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v5, 0x2

    :cond_82
    :goto_82
    if-eqz v5, :cond_dc

    if-eq v5, v4, :cond_d0

    if-eq v5, v6, :cond_b9

    if-eq v5, v11, :cond_aa

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    if-eq v5, v10, :cond_a0

    if-eq v5, v9, :cond_98

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_e1

    :cond_98
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_af

    :cond_a0
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_af

    :cond_aa
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    :goto_af
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    goto :goto_e6

    :cond_b9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    div-int/2addr v8, v6

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    goto :goto_e6

    :cond_d0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_e1

    :cond_dc
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    :goto_e1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    :goto_e6
    if-ltz v0, :cond_ff

    add-int/2addr v0, v7

    if-gt v0, v3, :cond_ff

    aget v0, v1, v2

    if-lt v5, v0, :cond_ff

    add-int/2addr v5, v7

    aget v0, v1, v4

    if-le v5, v0, :cond_f5

    goto :goto_ff

    :cond_f5
    const/4 v0, 0x1

    goto :goto_100

    :cond_f7
    :goto_f7
    const-string v0, "Height is too small or too large."

    goto :goto_fc

    :cond_fa
    :goto_fa
    const-string v0, "Width is too small or too large."

    :goto_fc
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_ff
    :goto_ff
    const/4 v0, 0x0

    :goto_100
    if-nez v0, :cond_104

    const/4 v0, 0x0

    return-object v0

    :cond_104
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_119

    new-array v0, v6, [I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    return-object v0

    :cond_119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    aget v0, v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v7

    if-gez v3, :cond_13d

    const/4 v3, 0x0

    goto :goto_145

    :cond_13d
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int v8, v3, v7

    if-le v8, v0, :cond_145

    sub-int v3, v0, v7

    :cond_145
    :goto_145
    aget v0, v1, v2

    if-ge v5, v0, :cond_14c

    aget v5, v1, v2

    goto :goto_158

    :cond_14c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int v7, v5, v0

    aget v8, v1, v4

    if-le v7, v8, :cond_158

    aget v1, v1, v4

    sub-int v5, v1, v0

    :cond_158
    :goto_158
    new-array v0, v6, [I

    aput v3, v0, v2

    aput v5, v0, v4

    return-object v0

    nop

    :sswitch_data_160
    .sparse-switch
        -0x514d33ab -> :sswitch_79
        -0x3c587281 -> :sswitch_6f
        -0x27103597 -> :sswitch_65
        0x455fe3fa -> :sswitch_5b
        0x4ccee637 -> :sswitch_51
        0x68a23bcd -> :sswitch_47
    .end sparse-switch
.end method


# virtual methods
.method public final zza(IIZ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_47

    if-eqz p3, :cond_47

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_44

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v4, p1, p2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v2

    aget p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    goto :goto_47

    :cond_44
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final zzb(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    return-void
.end method

.method public final zzk(Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    :cond_62
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    :cond_81
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    :cond_a0
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    :cond_bf
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    :cond_db
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_f7

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-ltz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    if-nez v0, :cond_101

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_31d

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_111

    goto/16 :goto_31d

    :cond_111
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object v5

    if-nez v5, :cond_11e

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_11e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_316

    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_316

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-nez v9, :cond_181

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzakk;->zzs(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_186

    :cond_181
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_186
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-nez v9, :cond_1b7

    const/4 v9, 0x1

    goto :goto_1b8

    :cond_1b7
    const/4 v9, 0x0

    :goto_1b8
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    sparse-switch v11, :sswitch_data_32a

    goto :goto_232

    :sswitch_1f7
    const-string v11, "top-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x1

    goto :goto_232

    :sswitch_201
    const-string v11, "bottom-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x4

    goto :goto_232

    :sswitch_20b
    const-string v11, "bottom-right"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x5

    goto :goto_232

    :sswitch_215
    const-string v11, "bottom-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x3

    goto :goto_232

    :sswitch_21f
    const-string v11, "top-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x0

    goto :goto_232

    :sswitch_229
    const-string v11, "center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_232

    const/4 v10, 0x2

    :cond_232
    :goto_232
    const/16 v9, 0x9

    const/16 v11, 0xa

    if-eqz v10, :cond_268

    const/16 v4, 0xe

    if-eq v10, v3, :cond_264

    if-eq v10, v15, :cond_25e

    const/16 v15, 0xc

    if-eq v10, v14, :cond_257

    if-eq v10, v13, :cond_253

    const/16 v4, 0xb

    if-eq v10, v12, :cond_24f

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_24b
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26c

    :cond_24f
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_24b

    :cond_253
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_24b

    :cond_257
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_25a
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26c

    :cond_25e
    const/16 v4, 0xd

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26c

    :cond_264
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_24b

    :cond_268
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_25a

    :goto_26c
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_284
    .catchall {:try_start_7 .. :try_end_284} :catchall_324

    :try_start_284
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v10, v5, v3

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2a5
    .catch Ljava/lang/RuntimeException; {:try_start_284 .. :try_end_2a5} :catch_2ce
    .catchall {:try_start_284 .. :try_end_2a5} :catchall_324

    :try_start_2a5
    aget v0, v5, v10

    aget v4, v5, v3

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz v8, :cond_2b6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-interface {v8, v0, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzaam;->zza(IIII)V

    :cond_2b6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzasi;->zzi(II)Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    const/4 v0, 0x0

    aget v0, v5, v0

    aget v3, v5, v3

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_2ce
    move-exception v0

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e9

    :cond_2e4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz v0, :cond_314

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_314
    monitor-exit v2

    return-void

    :cond_316
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_31d
    :goto_31d
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_324
    move-exception v0

    monitor-exit v2
    :try_end_326
    .catchall {:try_start_2a5 .. :try_end_326} :catchall_324

    goto :goto_328

    :goto_327
    throw v0

    :goto_328
    goto :goto_327

    nop

    :sswitch_data_32a
    .sparse-switch
        -0x514d33ab -> :sswitch_229
        -0x3c587281 -> :sswitch_21f
        -0x27103597 -> :sswitch_215
        0x455fe3fa -> :sswitch_20b
        0x4ccee637 -> :sswitch_201
        0x68a23bcd -> :sswitch_1f7
    .end sparse-switch
.end method

.method public final zzm(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_34
    if-eqz p1, :cond_44

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaam;->zzcq()V

    :cond_44
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public final zznf()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
