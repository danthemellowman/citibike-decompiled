.class public Lcom/citibikenyc/citibike/LayersFragment;
.super Landroid/support/v4/app/Fragment;
.source "LayersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "LayersFragment"


# instance fields
.field layerActive:Landroid/graphics/drawable/Drawable;

.field layerDefault:Landroid/graphics/drawable/Drawable;

.field mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

.field showingTraffic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->showingTraffic:Z

    .line 16
    return-void
.end method

.method private togglePlaceLayer(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "placeType"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v1, p2

    .line 97
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerDefault:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x5

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/citibikenyc/citibike/LayersFragment;->togglePlaceLayer(Landroid/view/View;I)V

    .line 72
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->showBikeLanes()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearBikeLanes()V

    goto :goto_0

    .line 79
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/citibikenyc/citibike/LayersFragment;->togglePlaceLayer(Landroid/view/View;I)V

    goto :goto_0

    .line 82
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/citibikenyc/citibike/LayersFragment;->togglePlaceLayer(Landroid/view/View;I)V

    goto :goto_0

    .line 85
    :pswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/citibikenyc/citibike/LayersFragment;->togglePlaceLayer(Landroid/view/View;I)V

    goto :goto_0

    .line 88
    :pswitch_4
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/citibikenyc/citibike/LayersFragment;->togglePlaceLayer(Landroid/view/View;I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x7f050067
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 26
    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/LayersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerDefault:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/LayersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/LayersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/MainActivity;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/MainActivity;->getMapPlaceManager()Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 35
    const v1, 0x7f050066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setButtonClickHandler(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 38
    iget-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 39
    const v1, 0x7f050067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 43
    const v1, 0x7f050069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 47
    const v1, 0x7f050068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3

    .line 51
    const v1, 0x7f05006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/citibikenyc/citibike/LayersFragment;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_4

    .line 55
    const v1, 0x7f05006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/LayersFragment;->layerActive:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_4
    return-object v0
.end method
