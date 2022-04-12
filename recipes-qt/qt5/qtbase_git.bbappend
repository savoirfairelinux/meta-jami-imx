PACKAGECONFIG:append = " gles2 eglfs kms"
PACKAGECONFIG:remove = " gl"

EXTRA_OECMAKE += "-DQT_FEATURE_egl=ON -DQT_FEATURE_opengl=ON -DQT_FEATURE_eglfs_gbm=OFF"
