load(":video_modules.bzl", "video_driver_modules")
load(":video_driver_build.bzl", "define_lunch_target_variant_modules", "define_16k_aliases")
load(":target_variants.bzl", "get_all_variants", "target_16k")

def define_target_modules():
    for target in target_16k:
        define_16k_aliases(target)
    for (target, variant) in get_all_variants():
        define_lunch_target_variant_modules(
            target = target,
            variant = variant,
            registry = video_driver_modules,
            modules = [
                "msm_video",
                "video",
            ],
        )
